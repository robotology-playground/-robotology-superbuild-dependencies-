@echo off

pushd %~dp0..
set "installerRootPath=%cd%"
popd

set "vcpkgTriplet=x64-windows"
set "vcpkgInstallDir=%installerRootPath%\vcpkg\installed\%vcpkgTriplet%"

rem Update PATH 
set "PATH=%PATH%;%vcpkgInstallDir%\bin"
set "PATH=%PATH%;%vcpkgInstallDir%\debug\bin"

rem Update CMAKE_PREFIX_PATH
set "CMAKE_PREFIX_PATH=%CMAKE_PREFIX_PATH%;%vcpkgInstallDir%"
set "CMAKE_PREFIX_PATH=%CMAKE_PREFIX_PATH%;%vcpkgInstallDir%\debug"

rem Update CMAKE_LIBRARY_PATH
set "CMAKE_LIBRARY_PATH=%CMAKE_LIBRARY_PATH%;%vcpkgInstallDir%\lib\manual-link"
set "CMAKE_LIBRARY_PATH=%CMAKE_LIBRARY_PATH%;%vcpkgInstallDir%\debug\lib\manual-link"

rem Update CMAKE_PROGRAM_PATH
set "CMAKE_PROGRAM_PATH=%CMAKE_PROGRAM_PATH%;%vcpkgInstallDir%\tools\protobuf"
