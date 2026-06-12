# Install script for directory: /home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/simbody" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKlapack.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/simbody/SimTKcommon" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Mechanics/include/SimTKcommon/Mechanics.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Mechanics/include/SimTKcommon/Orientation.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Scalar/include/SimTKcommon/Scalar.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/SmallMatrix/include/SimTKcommon/SmallMatrix.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/Constants.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/Simmatrix.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/TemplatizedLapack.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/Testing.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/basics.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/simbody/SimTKcommon/internal" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/BigMatrix.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/MatrixBase.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/MatrixCharacteristics.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/MatrixHelper.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/MatrixView_.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/Matrix_.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/RowVectorBase.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/RowVectorView_.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/RowVector_.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/VectorBase.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/VectorIterator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/VectorView_.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/BigMatrix/include/SimTKcommon/internal/Vector_.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Geometry/include/SimTKcommon/internal/DecorationGenerator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Geometry/include/SimTKcommon/internal/DecorativeGeometry.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Geometry/include/SimTKcommon/internal/PolygonalMesh.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Mechanics/include/SimTKcommon/internal/CoordinateAxis.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Mechanics/include/SimTKcommon/internal/MassProperties.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Mechanics/include/SimTKcommon/internal/Quaternion.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Mechanics/include/SimTKcommon/internal/Rotation.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Mechanics/include/SimTKcommon/internal/SpatialAlgebra.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Mechanics/include/SimTKcommon/internal/Transform.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Mechanics/include/SimTKcommon/internal/UnitVec.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Polynomial/include/SimTKcommon/internal/PolynomialRootFinder.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Random/include/SimTKcommon/internal/Random.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Scalar/include/SimTKcommon/internal/CompositeNumericalTypes.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Scalar/include/SimTKcommon/internal/NTraits.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Scalar/include/SimTKcommon/internal/conjugate.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Scalar/include/SimTKcommon/internal/negator.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/Event.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/EventHandler.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/EventReporter.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/Measure.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/MeasureImplementation.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/Stage.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/State.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/StateImpl.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/Study.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/StudyGuts.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/Subsystem.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/SubsystemGuts.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/System.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/Simulation/include/SimTKcommon/internal/SystemGuts.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/SmallMatrix/include/SimTKcommon/internal/Mat.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/SmallMatrix/include/SimTKcommon/internal/ResultType.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/SmallMatrix/include/SimTKcommon/internal/Row.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/SmallMatrix/include/SimTKcommon/internal/SmallDefsThatNeedBig.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/SmallMatrix/include/SimTKcommon/internal/SmallMatrixMixed.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/SmallMatrix/include/SimTKcommon/internal/SymMat.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/SmallMatrix/include/SimTKcommon/internal/Vec.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Array.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/AtomicInteger.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/CloneOnWritePtr.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/ClonePtr.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Exception.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/ExceptionMacros.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Fortran.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Function.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/IteratorRange.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Parallel2DExecutor.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/ParallelExecutor.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/ParallelWorkQueue.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Pathname.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Plugin.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/PrivateImplementation.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/PrivateImplementation_Defs.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/ReferencePtr.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/ReinitOnCopy.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/ResetOnCopy.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Serialize.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/StableArray.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/String.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/ThreadLocal.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Timing.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Value.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/VectorMath.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/Xml.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/common.h"
    "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/include/SimTKcommon/internal/recorder.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/simbody" TYPE FILE FILES "/home/ldaragnes/Stage/compilation_linux/simbody-core/SimTKcommon/doc/Simmatrix.pdf")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ldaragnes/Stage/compilation_linux/simbody-build/SimTKcommon/sharedTarget/cmake_install.cmake")
  include("/home/ldaragnes/Stage/compilation_linux/simbody-build/SimTKcommon/recorderTarget/cmake_install.cmake")

endif()

