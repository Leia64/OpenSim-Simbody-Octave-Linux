# Install script for directory: /home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimSimulation_recorder.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimSimulation_recorder.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimSimulation_recorder.so"
         RPATH "$ORIGIN/")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ldaragnes/Stage/compilation_linux/opensim-build/libosimSimulation_recorder.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimSimulation_recorder.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimSimulation_recorder.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimSimulation_recorder.so"
         OLD_RPATH "/home/ldaragnes/Stage/compilation_linux/opensim-build:/home/ldaragnes/Stage/compilation_linux/install/lib:"
         NEW_RPATH "$ORIGIN/")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libosimSimulation_recorder.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenSim/Simulation/." TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./AssemblySolver.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./CoordinateReference.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./InverseDynamicsSolver.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./InverseKinematicsSolver.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./MarkersReference.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./MomentArmSolver.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./Reference.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./RegisterTypes_osimSimulation.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./SimulationUtilities.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./Solver.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./StatesTrajectory.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./StatesTrajectoryReporter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./osimSimulation.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/./osimSimulationDLL.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenSim/Simulation/Control" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Control/Control.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Control/ControlConstant.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Control/ControlLinear.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Control/ControlLinearNode.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Control/ControlSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Control/ControlSetController.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Control/Controller.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Control/PrescribedController.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Control/TrackingController.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenSim/Simulation/Manager" TYPE FILE FILES "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Manager/Manager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenSim/Simulation/Model" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/AbstractPathPoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/AbstractTool.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ActivationFiberLengthMuscle.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ActivationFiberLengthMuscle_Deprecated.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Actuator.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ActuatorForceProbe.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ActuatorPowerProbe.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Analysis.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/AnalysisSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Appearance.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Bhargava2004MuscleMetabolicsProbe.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/BodyScale.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/BodyScaleSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/BodySet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/BushingForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/CMCActuatorSubsystem.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ComponentSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Condition.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ConditionalPathPoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ConstraintSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ContactGeometry.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ContactGeometrySet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ContactHalfSpace.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ContactMesh.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ContactSphere.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ControllerSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/CoordinateLimitForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/CoordinateSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ElasticFoundationForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ExpressionBasedBushingForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ExpressionBasedCoordinateForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ExpressionBasedPointToPointForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ExternalForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ExternalLoads.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Force.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ForceAdapter.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ForceSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Frame.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/FunctionBasedBushingForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/FunctionThresholdCondition.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Geometry.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/GeometryPath.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Ground.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/HuntCrossleyForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/HuntCrossleyForce_smooth.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/JointInternalPowerProbe.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/JointSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Ligament.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Marker.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/MarkerSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Model.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ModelComponent.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ModelComponentSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ModelVisualPreferences.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ModelVisualizer.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/MovingPathPoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Muscle.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/MuscleActiveFiberPowerProbe.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/OffsetFrame.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/PathActuator.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/PathPoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/PathPointSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/PathSpring.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/PhysicalFrame.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/PhysicalOffsetFrame.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Point.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/PointForceDirection.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/PointToPointSpring.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/PrescribedForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Probe.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/ProbeSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/SmoothSphereHalfSpaceForce.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Station.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/SystemEnergyProbe.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/TwoFrameLinker.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Model/Umberger2010MuscleMetabolicsProbe.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenSim/Simulation/Wrap" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/PathWrap.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/PathWrapPoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/PathWrapSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapCylinder.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapCylinderObst.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapDoubleCylinderObst.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapEllipsoid.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapMath.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapObject.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapObjectSet.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapResult.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapSphere.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapSphereObst.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/Wrap/WrapTorus.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenSim/Simulation/SimbodyEngine" TYPE FILE FILES
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/BallJoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/Body.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/ConstantDistanceConstraint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/Constraint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/Coordinate.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/CoordinateCouplerConstraint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/CustomJoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/EllipsoidJoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/FreeJoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/GimbalJoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/Joint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/PinJoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/PlanarJoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/PointConstraint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/PointOnLineConstraint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/RollingOnSurfaceConstraint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/SimbodyEngine.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/SliderJoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/SpatialTransform.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/TransformAxis.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/UnilateralConstraint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/UniversalJoint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/WeldConstraint.h"
    "/home/ldaragnes/Stage/compilation_linux/opensim-core/OpenSim/Simulation/SimbodyEngine/WeldJoint.h"
    )
endif()

