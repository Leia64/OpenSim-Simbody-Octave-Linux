#!/bin/bash

#SBATCH -q gp_resb
#SBATCH -A upc120
#SBATCH -t 18:00:00
#SBATCH -n 1
#SBATCH -c 40
#SBATCH --exclusive
#SBATCH --mail-type=all
#SBATCH --mail-user=leia.daragnes@upc.edu

set -e

# =============================================================================
# Argument Parsing
# =============================================================================
nfacesTib=100
nfacesFem=342
radForPairs="1"
kmaxpen_mode="1e4"
kCheckContacts="1e2"
kpress="1e4"

for arg in "$@"; do
    case $arg in
        *=*)
            key="${arg%%=*}"
            value="${arg#*=}"
            eval "$key=\"$value\""
            shift
            ;;
        *)
            echo "[WARNING] Unknown argument ignored: $arg"
            shift
            ;;
    esac
done

# =============================================================================
# Path Configurations
# =============================================================================
BASE_DIR="$(pwd)"
SRC_M_DIR="${BASE_DIR}/meshes_withAD/contactsKneeProsthesis/"
SCRIPT_M_NAME="Visualization_Forces_movement_raycastingv3.m"
TARGET_DIR="${BASE_DIR}/meshes_withAD/gaitWithKneeProsthesis/trackingSimulations_3D/OCP_GC"
SCRIPT_NAME="RunAllSimulations.m"

# =============================================================================
# Visualisation
# =============================================================================
echo "========================================="
echo " 1. Running Visualisation"
echo "========================================="
echo "[INFO] Forwarded Parameters:"
echo "       nfacesTib      = $nfacesTib"
echo "       nfacesFem      = $nfacesFem"
echo "       radForPairs    = $radForPairs"
echo "       kmaxpen_mode   = $kmaxpen_mode"
echo "       kCheckContacts = $kCheckContacts"
echo "       kpress         = $kpress"
echo "========================================="

if [ ! -f "${SRC_M_DIR}/${SCRIPT_M_NAME}" ]; then
    echo "[ERROR] The file ${SCRIPT_M_NAME} could not be found."
    exit 1
fi

#cd "$SRC_M_DIR"

#export nfacesTib nfacesFem radForPairs kmaxpen_mode kCheckContacts kpress
#export OMP_NUM_THREADS=40
#export LD_LIBRARY_PATH=$HOME/CasADi:$LD_LIBRARY_PATH

#octave --no-gui "${SCRIPT_M_NAME}"

echo "========================================="
echo " Both libraries CasADi successfully built     "
echo "========================================="

# =============================================================================
# Simulation
# =============================================================================
echo "========================================="
echo " 2. Running the Simulation       "
echo "========================================="

if [ ! -d "$TARGET_DIR" ]; then
    echo "[ERROR] The directory $TARGET_DIR does not exist."
    exit 1
fi

cd "$TARGET_DIR"

export nfacesTib nfacesFem radForPairs kmaxpen_mode kCheckContacts kpress
export OMP_NUM_THREADS=40

octave --no-gui "$SCRIPT_NAME"

echo "========================================="
echo " Simulation completed successfully     "
echo "========================================="