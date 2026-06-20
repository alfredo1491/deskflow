# Install script for directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/src/unittests

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/base/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/deskflow/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/gui/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/legacytests/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/net/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/platform/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/server/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
