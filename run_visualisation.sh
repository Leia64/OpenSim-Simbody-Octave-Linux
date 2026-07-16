#!/bin/bash
set -e

# =============================================================================
# Argument Parsing
# =============================================================================
nfacesTib=75
nfacesFem=258
radForPairs="1"
kmaxpen_mode="1e4"
kCheckContacts="1e2"
kpress="1e4"

for arg in "$@"; do
    case $arg in
        clean)
            ACTION="clean"
            shift
            ;;
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
# Path Configurations & Dynamic Naming
# =============================================================================
BASE_DIR="$(pwd)"
SRC_M_DIR="${BASE_DIR}/meshes_withAD/contactsKneeProsthesis/"
SCRIPT_M_NAME="Visualization_Forces_movement_raycastingv3.m"
TARGET_DIR="${BASE_DIR}/meshes_withAD/gaitWithKneeProsthesis/trackingSimulations_3D/ExternalFunctions_GC"

SUFFIX="kmax${kmaxpen_mode}_kpress${kpress}_checkContact${kCheckContacts}_${nfacesTib}x${nfacesFem}_rad${radForPairs}"
NEW_LIB_NAME_1="TrackSim_2_kneeCont_MellowMax_${SUFFIX}.so"
NEW_LIB_NAME_2="TrackSim_2_kneeCont_MellowMax_${SUFFIX}_debug.so"

# Cleanup Option Handling
if [ "$ACTION" == "clean" ]; then
    echo "========================================="
    echo " Cleaning up generated files             "
    echo "========================================="
    rm -f "${SRC_M_DIR}/f_bothcompartments.c" "${SRC_M_DIR}/f_bothcompartments_d.c"
    rm -f "${TARGET_DIR}/${NEW_LIB_NAME_1}" "${TARGET_DIR}/${NEW_LIB_NAME_2}"
    echo "[INFO] Cleanup completed."
    exit 0
fi

echo "========================================="
echo " 1. Running the Octave Script    "
echo "========================================="

if [ ! -f "${SRC_M_DIR}/${SCRIPT_M_NAME}" ]; then
    echo "[ERROR] The file ${SCRIPT_M_NAME} could not be found."
    exit 1
fi

export nfacesTib nfacesFem radForPairs kmaxpen_mode kCheckContacts kpress

cd "$SRC_M_DIR"
echo "[INFO] Running ${SCRIPT_M_NAME} with current parameters..."
echo "[INFO] Parameters: Tib=${nfacesTib}, Fem=${nfacesFem}, rad=${radForPairs}, kmax=${kmaxpen_mode}, kCheck=${kCheckContacts}, kpress=${kpress}"

export LD_LIBRARY_PATH=$HOME/CasADi:$LD_LIBRARY_PATH
octave --no-gui "${SCRIPT_M_NAME}"

echo "========================================="
echo " 2. Direct Compilation with GCC         "
echo "========================================="

echo "[INFO] Compiling ${NEW_LIB_NAME_1}..."
gcc -fPIC -shared -O3 f_bothcompartments.c -o "${TARGET_DIR}/${NEW_LIB_NAME_1}"

echo "[INFO] Compiling ${NEW_LIB_NAME_2}..."
gcc -fPIC -shared -O3 f_bothcompartments_d.c -o "${TARGET_DIR}/${NEW_LIB_NAME_2}"

echo "[INFO] Cleaning up temporary .c files..."
rm -f f_bothcompartments.c f_bothcompartments_d.c

echo "========================================="
echo " Both libraries successfully built"
echo " Lib 1: ${TARGET_DIR}/${NEW_LIB_NAME_1}"
echo " Lib 2: ${TARGET_DIR}/${NEW_LIB_NAME_2}"
echo "========================================="