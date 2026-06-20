# CMake generated Testfile for 
# Source directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/core
# Build directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/gui/core
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test([=[NetworkMonitorTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/gui/core/Debug/NetworkMonitorTests.exe")
  set_tests_properties([=[NetworkMonitorTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/core/CMakeLists.txt;4;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/core/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test([=[NetworkMonitorTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/gui/core/Release/NetworkMonitorTests.exe")
  set_tests_properties([=[NetworkMonitorTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/core/CMakeLists.txt;4;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/core/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test([=[NetworkMonitorTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/gui/core/MinSizeRel/NetworkMonitorTests.exe")
  set_tests_properties([=[NetworkMonitorTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/core/CMakeLists.txt;4;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/core/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test([=[NetworkMonitorTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/gui/core/RelWithDebInfo/NetworkMonitorTests.exe")
  set_tests_properties([=[NetworkMonitorTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/core/CMakeLists.txt;4;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/gui/core/CMakeLists.txt;0;")
else()
  add_test([=[NetworkMonitorTests]=] NOT_AVAILABLE)
endif()
