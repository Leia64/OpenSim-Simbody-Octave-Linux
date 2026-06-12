#!/bin/bash
set -e

BASE_DIR="$(pwd)"
SRC_SIMBODY="${BASE_DIR}/simbody-core"  
BUILD_SIMBODY="${BASE_DIR}/simbody-build"
INSTALL_DIR="${BASE_DIR}/install"

if [ "$1" == "clean" ]; then
    echo "========================================="
    echo " Cleaning up Simbody build               "
    echo "========================================="
    
    if [ -d "$BUILD_SIMBODY" ]; then
        echo "[INFO] Removing build directory: $BUILD_SIMBODY"
        rm -rf "$BUILD_SIMBODY"
    fi
    
    if [ -d "$INSTALL_DIR" ]; then
        echo "[INFO] Removing installation directory: $INSTALL_DIR"
        rm -rf "$INSTALL_DIR"
    fi
    
    echo "[INFO] Cleanup completed."
    exit 0
fi

echo "========================================="
echo " Compiling Simbody in Recorder Mode      "
echo "========================================="

rm -rf "$BUILD_SIMBODY"
mkdir -p "$BUILD_SIMBODY"
cd "$BUILD_SIMBODY"

echo "[INFO] Configuring CMake for Simbody..."
cmake "$SRC_SIMBODY" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$INSTALL_DIR" \
    -DWITH_RECORDER=ON \
    -DBUILD_WITH_RECORDER=ON \
    -DCMAKE_CXX_FLAGS="-w -fpermissive" \
    -DCMAKE_C_FLAGS="-w -fpermissive" \
    -DBUILD_TESTING=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_VISUALIZER=OFF \
    -DBUILD_STATIC_LIBRARIES=OFF \
    -DBUILD_DYNAMIC_LIBRARIES=ON \
    -DBUILD_RECORDER_LIBRARIES=ON

echo "[INFO] Building and installing Simbody..."
make -j$(nproc) 
make install

echo "========================================="
echo " Simbody successfully installed"
echo " in: $INSTALL_DIR"
echo "========================================="