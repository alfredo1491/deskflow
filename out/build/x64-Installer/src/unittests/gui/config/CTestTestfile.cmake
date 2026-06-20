# CMake generated Testfile for 
# Source directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/config
# Build directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Installer/src/unittests/gui/config
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test([=[ScreenTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Installer/src/unittests/gui/config/Debug/ScreenTests.exe")
  set_tests_properties([=[ScreenTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Installer/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/config/CMakeLists.txt;4;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/config/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test([=[ScreenTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Installer/src/unittests/gui/config/Release/ScreenTests.exe")
  set_tests_properties([=[ScreenTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Installer/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/config/CMakeLists.txt;4;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/config/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test([=[ScreenTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Installer/src/unittests/gui/config/MinSizeRel/ScreenTests.exe")
  set_tests_properties([=[ScreenTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Installer/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/config/CMakeLists.txt;4;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/config/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test([=[ScreenTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Installer/src/unittests/gui/config/RelWithDebInfo/ScreenTests.exe")
  set_tests_properties([=[ScreenTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Installer/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/config/CMakeLists.txt;4;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/config/CMakeLists.txt;0;")
else()
  add_test([=[ScreenTests]=] NOT_AVAILABLE)
endif()
