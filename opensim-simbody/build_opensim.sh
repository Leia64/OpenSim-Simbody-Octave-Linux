#!/bin/bash
set -e

BASE_DIR="$(pwd)"
SRC_OPENSIM="${BASE_DIR}/opensim-core"     
BUILD_OPENSIM="${BASE_DIR}/opensim-build"
INSTALL_DIR="${BASE_DIR}/install"    

if [ "$1" == "clean" ]; then
    echo "========================================="
    echo " Cleaning up Opensim build               "
    echo "========================================="
    
    if [ -d "$BUILD_OPENSIM" ]; then
        echo "[INFO] Removing build directory: $BUILD_OPENSIM"
        rm -rf "$BUILD_OPENSIM"
    fi
    
    echo "[INFO] Cleanup completed."
    exit 0
fi

echo "========================================="
echo " Starting OpenSim Compilation            "
echo "========================================="

export SIMBODY_HOME="$INSTALL_DIR"

rm -rf "$BUILD_OPENSIM"
mkdir -p "$BUILD_OPENSIM"
cd "$BUILD_OPENSIM"

CFLAGS="-w"
CXXFLAGS="-w -fpermissive -Wno-error=narrowing -Wno-error=conversion -Wno-error=incompatible-pointer-types -Wno-error=int-conversion -ff2c"

echo "[INFO] Configuring CMake for Opensim..."
cmake "$SRC_OPENSIM" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$INSTALL_DIR" \
    -DSIMBODY_HOME="$INSTALL_DIR" \
    -DSimbody_DIR="${INSTALL_DIR}/lib/cmake/simbody" \
    -DBUILD_PYTHON_WRAPPING=OFF \
    -DBUILD_API_ONLY=OFF \
    -DBUILD_JAVA_WRAPPING=OFF \
    -DOPENSIM_COPY_DEPENDENCIES=ON \
    -DOPENSIM_INSTALL_UNIX_FHS=ON \
    -DBUILD_TESTING=OFF \
    -DBUILD_APPLICATIONS=OFF \
    -DCMAKE_C_FLAGS:STRING="$CFLAGS" \
    -DCMAKE_CXX_FLAGS:STRING="$CXXFLAGS" \
    -DCMAKE_C_FLAGS_RELEASE:STRING="$CFLAGS" \
    -DCMAKE_CXX_FLAGS_RELEASE:STRING="$CXXFLAGS" \
    -DBUILD_RECORDER_LIBRARIES=ON \
    -DOPENSIM_COPY_DEPENDENCIES=ON \
    -DOPENSIM_INSTALL_UNIX_FHS=ON \
    -DWITH_RECORDER=ON \

echo "[INFO] Building OpenSim..."
make osimCommon_recorder osimSimulation_recorder TrackSim_1_kneeCont TrackSim_2_kneeCont_KCFasinput -j$(nproc)

echo "========================================="
echo " OpenSim successfully building          "
echo " in: $BUILD_OPENSIM"
echo "========================================="