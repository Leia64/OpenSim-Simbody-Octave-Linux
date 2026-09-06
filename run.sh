#!/bin/bash

#SBATCH -q gp_debug
#SBATCH -A upc120
#SBATCH -t 1:00:00
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
USE_ANN=0
USE_PRUNED=0

for arg in "$@"; do
    case $arg in
        ANN|useANN|useANN=1)
            USE_ANN=1
            shift
            ;;
        PRUNED|usePRUNED|usePRUNED=1)
            USE_PRUNED=1
            USE_ANN=1
            shift
            ;;
        *=*)
            key="${arg%%=*}"
            value="${arg#*=}"
            eval "$key=\"$value\""
            export "$key"
            shift
            ;;
        *)
            echo "[WARNING] Unknown argument ignored: $arg"
            shift
            ;;
    esac
done

OCTAVE_VARS="nfacesTib=${nfacesTib}; nfacesFem=${nfacesFem}; radForPairs=${radForPairs}; kmaxpen_mode=${kmaxpen_mode}; kCheckContacts=${kCheckContacts}; kpress=${kpress}; Options.useANNforKneeCont=${USE_ANN}; Options.prunedANN=${USE_PRUNED};"

# =============================================================================
# Path Configurations
# =============================================================================
BASE_DIR="$(pwd)"

if [ "$USE_ANN" -eq 1 ]; then
    SRC_M_DIR="${BASE_DIR}/meshes_withAD/surrogateKneeContact/" 
    SCRIPT_M_NAME="Visualization_Forces_ANN_penetrationv9.m"
else
    SRC_M_DIR="${BASE_DIR}/meshes_withAD/contactsKneeProsthesis/"
    SCRIPT_M_NAME="Visualization_Forces_movement_raycastingv3.m"
fi

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
echo "       USE_ANN        = $USE_ANN"
echo "       USE_PRUNED     = $USE_PRUNED"
echo "========================================="

if [ ! -f "${SRC_M_DIR}/${SCRIPT_M_NAME}" ]; then
    echo "[ERROR] The file ${SCRIPT_M_NAME} could not be found."
    exit 1
fi

cd "$SRC_M_DIR"

#export OMP_NUM_THREADS=40
export USE_PRUNED
export LD_LIBRARY_PATH=$HOME/CasADi:$LD_LIBRARY_PATH

#octave --no-gui "${SCRIPT_M_NAME}"

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

#export OMP_NUM_THREADS=40

SCRIPT_BASE_NAME="${SCRIPT_NAME%.m}"
octave --no-gui --eval "${OCTAVE_VARS} ${SCRIPT_BASE_NAME};"

echo "========================================="
echo " Simulation completed successfully     "
echo "========================================="