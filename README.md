# 3D Gait Tracking & Knee Contact Simulation Pipeline

## 1. Overview

This repository contains a high-performance computing (MareNostrum) framework for simulating 3D human gait cycles and analyzing knee joint prosthesis contact mechanics. The framework integrates a 34-degree-of-freedom (DOF) musculoskeletal model driven by 92 muscle-tendon units (Hill-type) with dynamic knee joint contact models.

The execution workflow is divided into two sequential steps managed automatically by the master bash script (`run.sh`):

1. **Contact Force Pre-visualization & Surrogate Evaluation**: Computes and visualizes contact forces using either standard geometric raycasting algorithms or Artificial Neural Network (ANN / Pruned ANN) surrogate models.
2. **Optimal Control Trajectory Optimization**: Formulates a direct Radau collocation Nonlinear Programming (NLP) problem solved via IPOPT and CasADi in GNU Octave. It performs parametric sweeps across multiple gait movements, mesh resolutions, contact stiffness parameters, and objective function weights.

---

## 2. Repository Structure

```text
.
├── run.sh                                       # Master Slurm MareNostrum submission & execution bash script
└── meshes_withAD/
    ├── contactsKneeProsthesis/
    │   └── Visualization_Forces_movement_raycastingv3.m  # Raycasting contact visualization script
    ├── surrogateKneeContact/
    │   └── Visualization_Forces_ANN_penetrationv9.m      # ANN surrogate contact evaluation script
    ├── experimentalFiles/
    |   └── data/                   # .csv and .mat
    |   └── mesh/                   # .stl
    |   └── pen/                    # .mat and .pth generating with the two-head penetration ANN
    └── gaitWithKneeProsthesis/
        └── trackingSimulations_3D/
            └── OCP_GC/
                ├── RunAllSimulations.m           # Main batch processing & parametric sweep script
                ├── TrackSim_3D_GC_v2.m           # Core 3D Gait Cycle NLP formulation & solver
                └── Results/                      # Output directory containing resulting .mat files
```

---

## 3. Key Components & Scripts

### `run.sh`
The master entrypoint script designed for HPC Slurm job schedulers. It:
* Parses command-line key-value pairs and flags (`ANN`, `PRUNED`, `nfacesFem=...`, etc.).
* Dynamically sets and exports environment variables passed down to GNU Octave.
* Executes Phase 1 (Visualization / Surrogate evaluation) in the corresponding directory.
* Executes Phase 2 (`RunAllSimulations.m`) to run all optimization simulations.

### `RunAllSimulations.m`
Iterates over test movements (`ngait_og1`, `ngait_tm_fast1`, etc.), surface mesh resolutions, contact parameters, and objective weighting structures (`W`). Solves the OCP using `TrackSim_3D_GC_v2.m`, computes tracking evaluation metrics (RMSE, $R^2$), and exports result structures.

### `TrackSim_3D_GC_v2.m`
The central optimal control formulation function using Radau direct collocation. It optimizes generalized positions ($Q$), velocities ($\dot{Q}$), muscle activations ($a$), tendon forces ($	ilde{F}_T$), and contact reactions.

---

## 4. Execution & Usage Instructions

### 4.1. Prerequisites
* **GNU Octave** with packages installed: `control`, `signal`, `splines`, `optim`, `geometry`, `parallel`, `io`.
* **CasADi Framework** (C++ / Octave) with IPOPT solver, added to your `LD_LIBRARY_PATH`.
* **Slurm Workload Manager** (for HPC cluster execution).

### 4.2. Running via Slurm (HPC Submission)
To submit the batch job to the Slurm queue with standard dynamic arguments:

```bash
sbatch run.sh
```

Or run directly via bash (if executing on a local node/workstation):

```bash
bash run.sh
```

### 4.3. Passing Custom Parameters & Dynamic Options

You can dynamically pass command-line arguments to override default parameters:

#### Standard run with custom mesh faces and contact parameters:
```bash
sbatch run.sh nfacesTib=75 nfacesFem=258
```

#### Run using Neural Network (ANN) Surrogate Knee Contact Model:
```bash
sbatch run.sh ANN
# OR
sbatch run.sh useANN=1
```

#### Run using Pruned Neural Network Model:
```bash
sbatch run.sh PRUNED
```

---

## 5. Configurable Parameters Reference

| Parameter | Default Value | Description |
| :--- | :--- | :--- |
| `nfacesFem` | `342` | Number of mesh triangular faces for the femoral component. |
| `nfacesTib` | `100` | Number of mesh triangular faces for the tibial component. |
| `kpress` | `1e4` | Pressure contact stiffness coefficient factor. |
| `kCheckContacts` | `1e2` | Contact proximity check stiffness / search threshold. |
| `kmaxpen_mode` | `1e4` | Maximum penetration stiffness mode factor or `'Max'`. |
| `radForPairs` | `1` | Search radius for contact pair detection. |
| `ANN / PRUNED` | `0 / 0` | Flags toggling Artificial Neural Network surrogate evaluation. |

---

## 6. Output Results

Simulation outputs are automatically exported to:  
`meshes_withAD/gaitWithKneeProsthesis/trackingSimulations_3D/OCP_GC/Results_<suffix_parameters>/<name_movement>/`

Output files are saved as `.mat` files f