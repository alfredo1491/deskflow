# CMake generated Testfile for 
# Source directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/platform
# Build directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/platform
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test([=[MSWindowsClipboardTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/platform/Debug/MSWindowsClipboardTests.exe")
  set_tests_properties([=[MSWindowsClipboardTests]=] PROPERTIES  DEPENDS "platform" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/lib/platform" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/platform/CMakeLists.txt;5;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/platform/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test([=[MSWindowsClipboardTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/platform/Release/MSWindowsClipboardTests.exe")
  set_tests_properties([=[MSWindowsClipboardTests]=] PROPERTIES  DEPENDS "platform" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/lib/platform" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/platform/CMakeLists.txt;5;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/platform/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test([=[MSWindowsClipboardTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/platform/MinSizeRel/MSWindowsClipboardTests.exe")
  set_tests_properties([=[MSWindowsClipboardTests]=] PROPERTIES  DEPENDS "platform" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/lib/platform" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/platform/CMakeLists.txt;5;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/platform/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test([=[MSWindowsClipboardTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/unittests/platform/RelWithDebInfo/MSWindowsClipboardTests.exe")
  set_tests_properties([=[MSWindowsClipboardTests]=] PROPERTIES  DEPENDS "platform" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/out/build/x64-Debug-rescue/src/lib/platform" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/platform/CMakeLists.txt;5;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/Deskflow/src/unittests/platform/CMakeLists.txt;0;")
else()
  add_test([=[MSWindowsClipboardTests]=] NOT_AVAILABLE)
endif()
