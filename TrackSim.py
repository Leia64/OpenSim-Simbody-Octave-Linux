import os
import subprocess
import sys
import importlib
import shutil
from casadi import *

# =============================================================================
# 1. Path configurations
# =============================================================================
script_dir = os.path.dirname(os.path.abspath(__file__))
build_dir = os.path.join(script_dir, "opensim-build")
CUSTOM_OUTPUT_DIR = os.path.join(script_dir, "meshes_withAD/gaitWithKneeProsthesis/trackingSimulations_3D/ExternalFunctions_GC")

generated_py = os.path.join(build_dir, "foo.py")
generated_c = os.path.join(script_dir, "foo_jac.c")

if build_dir not in sys.path:
    sys.path.append(build_dir)

# List of simulations to run sequentially
simulations = [
    ("TrackSim_1_kneeCont", "TrackSim_1_kneeCont.so"),
    ("TrackSim_2_kneeCont_KCFasinput", "TrackSim_2_kneeCont_KCFasinput.so")
]

def cleanup_temp_files():
    """Systematically removes intermediate files to prevent conflicts."""
    print("Cleaning up intermediate temporary files...")
    if os.path.exists(generated_py):
        os.remove(generated_py)
    cache_dir = os.path.join(build_dir, "__pycache__")
    if os.path.exists(cache_dir):
        shutil.rmtree(cache_dir)
    if os.path.exists(generated_c):
        os.remove(generated_c)

# =============================================================================
# 2. Execution of the simulation loop
# =============================================================================
for index, (exe_name, lib_target_name) in enumerate(simulations, start=1):
    print("\n" + "="*80)
    print(f" LAUNCHING TrackSim {index}/{len(simulations)}: {exe_name}")
    print("="*80)
    
    executable_path = os.path.join(build_dir, exe_name)
    output_lib_path = os.path.join(CUSTOM_OUTPUT_DIR, lib_target_name)
    
    # --- Step A: C++ Executable ---
    print(f"Launching {executable_path}...")
    try:
        subprocess.run(
            [executable_path],
            cwd=build_dir,      
            check=True,           
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        print(f"Executable '{exe_name}' finished successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error during the execution of {exe_name}:\n{e.stderr}")
        cleanup_temp_files()
        sys.exit(1)

    # --- Step B: Clean Import of foo.py ---
    print("Importing the newly generated foo.py file...")
    if 'foo' in sys.modules:
        del sys.modules['foo'] # Forces Python to forget the previous foo module
        
    try:
        import foo
        importlib.reload(foo) 
    except ModuleNotFoundError:
        print("Error: 'foo.py' was not found in the expected directory.")
        cleanup_temp_files()
        sys.exit(1)

    # --- Step C: CasADi Code Generation ---
    print("Generating CasADi code...")
    cg = CodeGenerator('foo_jac')
    arg = SX.sym('arg', 162)
    res_foo = foo.foo(arg)
    y = res_foo[0] if isinstance(res_foo, (tuple, list)) else res_foo

    F = Function('F', [arg], [y])
    cg.add(F)
    cg.add(F.jacobian())
    cg.generate()
    print("'foo_jac.c' generation completed.")

    # --- Step D: GCC Compilation ---
    print(f"Compiling 'foo_jac.c' into '{lib_target_name}'...")
    try:
        compile_cmd = ["gcc", "-fPIC", "-shared", "-O3", generated_c, "-o", output_lib_path]
        subprocess.run(
            compile_cmd,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        print(f"Compilation successful")
        print(f"Shared library created at: {output_lib_path}")
    except subprocess.CalledProcessError as e:
        print(f"Compilation Error for {lib_target_name}:\n{e.stderr}")
        cleanup_temp_files()
        sys.exit(1)

    # --- Step E: Cleanup for Next Iteration ---
    cleanup_temp_files()

print("\n" + "="*80)
print("ALL TrackSim EXECUTED SUCCESSFULLY.")
print(f"Libraries preserved in: {CUSTOM_OUTPUT_DIR}")
print("="*80)