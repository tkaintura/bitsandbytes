cmake_minimum_required(VERSION 2.8.12)

# Settings:
set(CTEST_DASHBOARD_ROOT                "/home/tanya.kaintura/Project/bitsandbytes/cmake-3.22.1/Tests/CTestTest")
set(CTEST_SITE                          "derai-training-instance-8-gpu-t0001")
set(CTEST_BUILD_NAME                    "CTestTest-Linux-g++-Crash")

set(CTEST_SOURCE_DIRECTORY              "/home/tanya.kaintura/Project/bitsandbytes/cmake-3.22.1/Tests/CTestTestCrash")
set(CTEST_BINARY_DIRECTORY              "/home/tanya.kaintura/Project/bitsandbytes/cmake-3.22.1/Tests/CTestTestCrash")
set(CTEST_CVS_COMMAND                   "")
set(CTEST_CMAKE_GENERATOR               "Unix Makefiles")
set(CTEST_CMAKE_GENERATOR_PLATFORM      "")
set(CTEST_CMAKE_GENERATOR_TOOLSET       "")
set(CTEST_BUILD_CONFIGURATION           "$ENV{CMAKE_CONFIG_TYPE}")
set(CTEST_COVERAGE_COMMAND              "/usr/bin/gcov")
set(CTEST_NOTES_FILES                   "${CTEST_SCRIPT_DIRECTORY}/${CTEST_SCRIPT_NAME}")

#CTEST_EMPTY_BINARY_DIRECTORY(${CTEST_BINARY_DIRECTORY})

CTEST_START(Experimental)
CTEST_CONFIGURE(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
CTEST_BUILD(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
CTEST_TEST(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
#CTEST_SUBMIT()
