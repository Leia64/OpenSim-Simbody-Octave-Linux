#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "osimCommon_recorder" for configuration "Release"
set_property(TARGET osimCommon_recorder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(osimCommon_recorder PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libosimCommon_recorder.so"
  IMPORTED_SONAME_RELEASE "libosimCommon_recorder.so"
  )

list(APPEND _cmake_import_check_targets osimCommon_recorder )
list(APPEND _cmake_import_check_files_for_osimCommon_recorder "${_IMPORT_PREFIX}/lib/libosimCommon_recorder.so" )

# Import target "osimSimulation_recorder" for configuration "Release"
set_property(TARGET osimSimulation_recorder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(osimSimulation_recorder PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libosimSimulation_recorder.so"
  IMPORTED_SONAME_RELEASE "libosimSimulation_recorder.so"
  )

list(APPEND _cmake_import_check_targets osimSimulation_recorder )
list(APPEND _cmake_import_check_files_for_osimSimulation_recorder "${_IMPORT_PREFIX}/lib/libosimSimulation_recorder.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
