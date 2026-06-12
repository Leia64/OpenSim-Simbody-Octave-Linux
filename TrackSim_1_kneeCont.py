import os
import subprocess
import sys
import importlib
import shutil
import argparse
from casadi import *

# =============================================================================
# 0. Argument parsing
# =============================================================================
parser = argparse.ArgumentParser(description="Run TrackSim, generate CasADi code and compile it.")
parser.add_argument(
    '--clean', 
    action='store_true', 
    help="Clean up all generated files (foo.py, foo_jac.c, and the .so library) after execution."
)
args = parser.parse_args()

# =============================================================================
# 1. Path configurations
# =============================================================================
script_dir = os.path.dirname(os.path.abspath(__file__))
build_dir = os.path.join(script_dir, "opensim-build")

executable_path = os.path.join(build_dir, "TrackSim_1_kneeCont")
generated_py = os.path.join(build_dir, "foo.py")
generated_c = os.path.join(script_dir, "foo_jac.c")

lib_target_name = "TrackSim_1_kneeCont.so"
output_lib_path = os.path.join(script_dir, lib_target_name)

# =============================================================================
# 2. Generating foo.py
# =============================================================================
print(f"Launching {executable_path}...")

try:
    result = subprocess.run(
        [executable_path],
        cwd=build_dir,      
        check=True,           
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True
    )
    print("Executable finished successfully.")
    
except subprocess.CalledProcessError as e:
    print(f"Error during the execution of TrackSim_1_kneeCont:\n{e.stderr}")
    sys.exit(1)

if build_dir not in sys.path:
    sys.path.append(build_dir)
print("Importing the generated foo.py file...")

try:
    import foo
    importlib.reload(foo) 
except ModuleNotFoundError:
    print("Error: 'foo.py' was not found in the expected directory.")
    sys.exit(1)

# =============================================================================
# 3. Generating the CasADi code
# =============================================================================
print("Generating CasADi code...")

cg = CodeGenerator('foo_jac')

arg = SX.sym('arg', 162)
res_foo = foo.foo(arg)

y = res_foo[0] if isinstance(res_foo, (tuple, list)) else res_foo

F = Function('F', [arg], [y])

cg.add(F)
cg.add(F.jacobian())

cg.generate()

print("'foo_jac.c' generation completed")

# =============================================================================
# 4. Compiling the .c into a .so Library
# =============================================================================
print(f"Compiling 'foo_jac.c' into '{lib_target_name}'...")

try:
    compile_cmd = ["gcc", "-fPIC", "-shared", "-O3", generated_c, "-o", output_lib_path]

    compilation_result = subprocess.run(
        compile_cmd,
        check=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True
    )
    print(f"Compilation successful, shared library created at: {output_lib_path}")

except subprocess.CalledProcessError as e:
    print(f"Compilation Error:\n{e.stderr}")
    sys.exit(1)

# =============================================================================
# 5. Optional Cleanup Section
# =============================================================================
if args.clean:
    print("\n[Option --clean detected] Cleaning up generated files...")

    if os.path.exists(generated_py):
        os.remove(generated_py)
        cache_dir = os.path.join(build_dir, "__pycache__")
        if os.path.exists(cache_dir):
            shutil.rmtree(cache_dir)

    if os.path.exists(generated_c):
        os.remove(generated_c)

    if os.path.exists(output_lib_path):
        os.remove(output_lib_path)

    print("Cleanup complete. Directory is clean.")
else:
    print("\nAll files kept (foo.py, foo_jac.c, and TrackSim_1_kneeCont.so).")