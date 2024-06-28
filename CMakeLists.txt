#
# @attention
#
# Copyright (c) 2024 STMicroelectronics.
# All rights reserved.
#
# This software is licensed under terms that can be found in the LICENSE file
# in the root directory of this software component.
# If no LICENSE file comes with this software, it is provided AS-IS.
#

project(robotarm3d)
cmake_minimum_required(VERSION 3.9)

find_package(Qt5Core CONFIG REQUIRED)
find_package(Qt5Gui CONFIG REQUIRED)
find_package(Qt5Network CONFIG REQUIRED)
find_package(Qt5Qml CONFIG REQUIRED)
find_package(Qt5QmlModels CONFIG REQUIRED)
find_package(Qt5Quick CONFIG REQUIRED)
find_package(Qt5Quick3DUtils CONFIG REQUIRED)
find_package(Qt5Quick3DRender CONFIG REQUIRED)
find_package(Qt5Quick3DAssetImport CONFIG REQUIRED)
find_package(Qt5Quick3DRuntimeRender CONFIG REQUIRED)
find_package(Qt5Quick3D CONFIG REQUIRED)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC TRUE)
set(CMAKE_AUTORCC TRUE)

add_executable(robotarm3d
  src/main.cpp
  src/systeminfo.cpp
  qml.qrc
)

target_link_libraries(robotarm3d Qt5::Core Qt5::Gui Qt5::Quick Qt5::Quick3D)

install(TARGETS robotarm3d RUNTIME DESTINATION bin)
