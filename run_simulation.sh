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
TARGET_DIR="${BASE_DIR}/meshes_withAD/gaitWithKneeProsthesis/trackingSimulations_3D/OCP_GC"
SCRIPT_NAME="RunAllSimulations.m"

if [ ! -d "$TARGET_DIR" ]; then
    echo "[ERROR] The directory $TARGET_DIR does not exist."
    exit 1
fi

# Export variables so Octave can read them from the environment
export nfacesTib nfacesFem radForPairs kmaxpen_mode kCheckContacts kpress

cd "$TARGET_DIR"

echo "========================================="
echo " Launching Simulation (OCP_GC)           "
echo "========================================="
echo "[INFO] Working Directory: $TARGET_DIR"
echo "[INFO] Running script:    $SCRIPT_NAME"
echo "[INFO] Forwarded Parameters:"
echo "       nfacesTib      = $nfacesTib"
echo "       nfacesFem      = $nfacesFem"
echo "       radForPairs    = $radForPairs"
echo "       kmaxpen_mode   = $kmaxpen_mode"
echo "       kCheckContacts = $kCheckContacts"
echo "       kpress         = $kpress"
echo "========================================="

octave --no-gui "$SCRIPT_NAME"

echo "========================================="
echo " Simulation completed successfully     "
echo "========================================="