# CMake generated Testfile for 
# Source directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/src/unittests/gui
# Build directory: C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/gui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[LoggerTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/gui/LoggerTests.exe")
set_tests_properties([=[LoggerTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/src/unittests/gui/CMakeLists.txt;7;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/src/unittests/gui/CMakeLists.txt;0;")
add_test([=[KeySequenceTests]=] "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/unittests/gui/KeySequenceTests.exe")
set_tests_properties([=[KeySequenceTests]=] PROPERTIES  DEPENDS "gui" WORKING_DIRECTORY "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/build/Desktop_Qt_6_11_0_MSVC2022_64bit-Release/src/lib/gui" _BACKTRACE_TRIPLES "C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/src/unittests/CMakeLists.txt;41;add_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/src/unittests/gui/CMakeLists.txt;14;create_test;C:/Users/gersan.munoz/Downloads/Programas Creados/deskflow-master/deskflow-m/src/unittests/gui/CMakeLists.txt;0;")
subdirs("config")
subdirs("core")
