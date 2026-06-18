#!/bin/bash
set -e

# =============================================================================
# Path Configurations
# =============================================================================
BASE_DIR="$(pwd)"

SRC_M_DIR="${BASE_DIR}/meshes_withAD/contactsKneeProsthesis/"
SCRIPT_M_NAME="Visualization_Forces_movement_raycastingv3.m"

TARGET_DIR="${BASE_DIR}/meshes_withAD/gaitWithKneeProsthesis/trackingSimulations_3D/ExternalFunctions_GC"

NEW_LIB_NAME_1="TrackSim_2_kneeCont_MellowMax_kmax1e4_kpress1e4_checkContact1e2_75x258_rad1.so"
NEW_LIB_NAME_2="TrackSim_2_kneeCont_MellowMax_kmax1e4_kpress1e4_checkContact1e2_75x258_rad1_debug.so"

# Cleanup Option Handling
if [ "$1" == "clean" ]; then
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

cd "$SRC_M_DIR"
echo "[INFO] Running ${SCRIPT_M_NAME}..."
octave --no-gui "$SCRIPT_M_NAME"

echo "========================================="
echo " 2. Direct Compilation with GCC         "
echo "========================================="

echo "[INFO] Compiling ${NEW_LIB_NAME_1}..."
gcc -fPIC -shared -O3 f_bothcompartments.c -o "${TARGET_DIR}/${NEW_LIB_NAME_1}"

echo "[INFO] Compiling ${NEW_LIB_NAME_2}..."
gcc -fPIC -shared -O3 f_bothcompartments_d.c -o "${TARGET_DIR}/${NEW_LIB_NAME_2}"

echo "========================================="
echo " Both libraries successfully built"
echo " Lib 1: ${TARGET_DIR}/${NEW_LIB_NAME_1}"
echo " Lib 2: ${TARGET_DIR}/${NEW_LIB_NAME_2}"
echo "========================================="