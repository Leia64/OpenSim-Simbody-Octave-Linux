# Install script for directory: /home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ldaragnes/Stage/compilation_linux/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/simbody" TYPE FILE FILES "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/include/SimTKmath.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/simbody/simmath" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/CPodesIntegrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/ExplicitEulerIntegrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/Integrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/RungeKutta2Integrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/RungeKutta3Integrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/RungeKuttaFeldbergIntegrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/RungeKuttaMersonIntegrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/SemiExplicitEuler2Integrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/SemiExplicitEulerIntegrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/TimeStepper.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/VerletIntegrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/include/simmath/Differentiator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/include/simmath/LinearAlgebra.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/include/simmath/MultibodyGraphMaker.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/include/simmath/Optimizer.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/simbody/simmath/internal" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/BicubicSurface.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/CollisionDetectionAlgorithm.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Contact.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/ContactGeometry.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/ContactTracker.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/GCVSPLUtil.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo_BicubicBezierPatch.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo_BicubicHermitePatch.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo_Box.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo_CubicBezierCurve.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo_CubicHermiteCurve.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo_LineSeg.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo_Point.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo_Sphere.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geo_Triangle.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Geodesic.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/GeodesicIntegrator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/OBBTree.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/OrientedBoundingBox.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/ParticleConSurfaceSystem.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/Spline.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Geometry/include/simmath/internal/SplineFitter.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/Integrators/include/simmath/internal/SimTKcpodes.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/include/simmath/internal/OptimizerRep.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/include/simmath/internal/common.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/simbody" TYPE FILE FILES "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKmath/doc/SimmathUserGuide.pdf")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ldaragnes/Stage/compilation_linux/simbody-build/SimTKmath/LinearAlgebra/cmake_install.cmake")
  include("/home/ldaragnes/Stage/compilation_linux/simbody-build/SimTKmath/Integrators/cmake_install.cmake")
  include("/home/ldaragnes/Stage/compilation_linux/simbody-build/SimTKmath/Optimizers/cmake_install.cmake")
  include("/home/ldaragnes/Stage/compilation_linux/simbody-build/SimTKmath/Geometry/cmake_install.cmake")
  include("/home/ldaragnes/Stage/compilation_linux/simbody-build/SimTKmath/recorderTarget/cmake_install.cmake")
  include("/home/ldaragnes/Stage/compilation_linux/simbody-build/SimTKmath/sharedTarget/cmake_install.cmake")

endif()

