# Install script for directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/src/apps/deskflow-daemon

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/deskflow")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/bin/deskflow-daemon.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(GET_RUNTIME_DEPENDENCIES
    RESOLVED_DEPENDENCIES_VAR _CMAKE_DEPS
    EXECUTABLES
      "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/bin/deskflow-daemon.exe"
    PRE_EXCLUDE_REGEXES
      "api-ms-win-.*"
      "ext-ms-.*"
      "^hvsifiletrust\\.dll\$"
      "^icu.*\\.dll\$"
    POST_EXCLUDE_REGEXES
      ".*system32.*"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(_CMAKE_TMP_dep IN LISTS _CMAKE_DEPS)
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES ${_CMAKE_TMP_dep}
      FOLLOW_SYMLINK_CHAIN)
  endforeach()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/apps/deskflow-daemon/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
