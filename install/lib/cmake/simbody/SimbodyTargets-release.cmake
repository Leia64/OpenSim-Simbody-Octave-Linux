#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SimTKcommon" for configuration "Release"
set_property(TARGET SimTKcommon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SimTKcommon PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "/usr/lib/x86_64-linux-gnu/libblas.so;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libblas.so;pthread;rt;dl;m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSimTKcommon.so.3.6"
  IMPORTED_SONAME_RELEASE "libSimTKcommon.so.3.6"
  )

list(APPEND _cmake_import_check_targets SimTKcommon )
list(APPEND _cmake_import_check_files_for_SimTKcommon "${_IMPORT_PREFIX}/lib/libSimTKcommon.so.3.6" )

# Import target "SimTKcommon_recorder" for configuration "Release"
set_property(TARGET SimTKcommon_recorder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SimTKcommon_recorder PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "/usr/lib/x86_64-linux-gnu/libblas.so;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libblas.so;pthread;rt;dl;m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSimTKcommon_recorder.so.3.6"
  IMPORTED_SONAME_RELEASE "libSimTKcommon_recorder.so.3.6"
  )

list(APPEND _cmake_import_check_targets SimTKcommon_recorder )
list(APPEND _cmake_import_check_files_for_SimTKcommon_recorder "${_IMPORT_PREFIX}/lib/libSimTKcommon_recorder.so.3.6" )

# Import target "SimTKmath_recorder" for configuration "Release"
set_property(TARGET SimTKmath_recorder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SimTKmath_recorder PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "SimTKcommon_recorder;/usr/lib/x86_64-linux-gnu/libblas.so;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libblas.so;pthread;rt;dl;m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSimTKmath_recorder.so.3.6"
  IMPORTED_SONAME_RELEASE "libSimTKmath_recorder.so.3.6"
  )

list(APPEND _cmake_import_check_targets SimTKmath_recorder )
list(APPEND _cmake_import_check_files_for_SimTKmath_recorder "${_IMPORT_PREFIX}/lib/libSimTKmath_recorder.so.3.6" )

# Import target "SimTKmath" for configuration "Release"
set_property(TARGET SimTKmath APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SimTKmath PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "SimTKcommon;/usr/lib/x86_64-linux-gnu/libblas.so;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libblas.so;pthread;rt;dl;m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSimTKmath.so.3.6"
  IMPORTED_SONAME_RELEASE "libSimTKmath.so.3.6"
  )

list(APPEND _cmake_import_check_targets SimTKmath )
list(APPEND _cmake_import_check_files_for_SimTKmath "${_IMPORT_PREFIX}/lib/libSimTKmath.so.3.6" )

# Import target "SimTKsimbody_recorder" for configuration "Release"
set_property(TARGET SimTKsimbody_recorder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SimTKsimbody_recorder PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "SimTKmath_recorder;SimTKcommon_recorder;/usr/lib/x86_64-linux-gnu/libblas.so;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libblas.so;pthread;rt;dl;m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSimTKsimbody_recorder.so.3.6"
  IMPORTED_SONAME_RELEASE "libSimTKsimbody_recorder.so.3.6"
  )

list(APPEND _cmake_import_check_targets SimTKsimbody_recorder )
list(APPEND _cmake_import_check_files_for_SimTKsimbody_recorder "${_IMPORT_PREFIX}/lib/libSimTKsimbody_recorder.so.3.6" )

# Import target "SimTKsimbody" for configuration "Release"
set_property(TARGET SimTKsimbody APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SimTKsimbody PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "SimTKmath;SimTKcommon;/usr/lib/x86_64-linux-gnu/libblas.so;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libblas.so;pthread;rt;dl;m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSimTKsimbody.so.3.6"
  IMPORTED_SONAME_RELEASE "libSimTKsimbody.so.3.6"
  )

list(APPEND _cmake_import_check_targets SimTKsimbody )
list(APPEND _cmake_import_check_files_for_SimTKsimbody "${_IMPORT_PREFIX}/lib/libSimTKsimbody.so.3.6" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
