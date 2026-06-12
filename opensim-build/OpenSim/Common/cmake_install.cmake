# Install script for directory: /home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimCommon_recorder.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimCommon_recorder.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimCommon_recorder.so"
         RPATH "$ORIGIN/")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ldaragnes/Stage/compilation_linux/opensim-build/libosimCommon_recorder.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimCommon_recorder.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimCommon_recorder.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimCommon_recorder.so"
         OLD_RPATH "/home/ldaragnes/Stage/compilation_linux/opensim-build:/home/ldaragnes/Stage/compilation_linux/install/lib:"
         NEW_RPATH "$ORIGIN/")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimCommon_recorder.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenSim/Common" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/AbstractDataTable.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/AbstractProperty.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Adapters.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Array.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ArrayPtrs.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/CSVFileAdapter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Component.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ComponentList.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ComponentOutput.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ComponentPath.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ComponentSocket.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Constant.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/DataAdapter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/DataTable.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/DebugUtilities.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/DelimFileAdapter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Event.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Exception.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/FileAdapter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Function.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/FunctionAdapter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/FunctionSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/GCVSpline.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/GCVSplineSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/IO.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/LinearFunction.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Lmdif.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/LoadOpenSimLibrary.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/LogCallback.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/LogManager.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/MarkerData.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/MarkerFrame.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ModelDisplayHints.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Mtx.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/MultiplierFunction.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/MultivariatePolynomialFunction.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Object.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ObjectGroup.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/OptimizationTarget.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Path.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PiecewiseConstantFunction.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PiecewiseLinearFunction.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PolynomialFunction.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Property.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyBool.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyBoolArray.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyDbl.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyDblArray.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyDblVec.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyGroup.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyInt.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyIntArray.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyObj.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyObjArray.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyObjPtr.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertySet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyStr.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyStrArray.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyTable.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/PropertyTransform.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Property_Deprecated.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/RegisterTypes_osimCommon.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Reporter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/RootSolver.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/STOFileAdapter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Scale.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ScaleSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/SegmentedQuinticBezierToolkit.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Set.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Signal.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/SignalGenerator.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/SimmIO.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/SimmMacros.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/SimmSpline.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Sine.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/SmoothSegmentedFunction.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/SmoothSegmentedFunctionFactory.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/StateVector.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/StepFunction.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Storage.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/StorageFactory.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/StorageInterface.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/TRCFileAdapter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/TableSource.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/TimeSeriesTable.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/Units.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ValueArray.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/ValueArrayDictionary.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/VectorFunction.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/VectorFunctionUncoupledNxN.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/XMLDocument.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/XYFunctionInterface.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/gcvspl.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/osimCommon.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/osimCommonDLL.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/osimCommonTemplates.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Common/osim_adouble.h"
    )
endif()

