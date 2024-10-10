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
cmake_minimum_required(VERSION 3.9)
project(robotarm3d)

find_package(Qt6Core CONFIG REQUIRED)
find_package(Qt6Gui CONFIG REQUIRED)
find_package(Qt6Network CONFIG REQUIRED)
find_package(Qt6Qml CONFIG REQUIRED)
find_package(Qt6QmlModels CONFIG REQUIRED)
find_package(Qt6Quick CONFIG REQUIRED)
find_package(Qt6Quick3DUtils CONFIG REQUIRED)
find_package(Qt6Quick3DAssetImport CONFIG REQUIRED)
find_package(Qt6Quick3DRuntimeRender CONFIG REQUIRED)
find_package(Qt6Quick3D CONFIG REQUIRED)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC TRUE)
set(CMAKE_AUTORCC TRUE)

add_executable(robotarm3d
  src/main.cpp
  src/systeminfo.cpp
  qml.qrc
)

target_link_libraries(robotarm3d Qt6::Core Qt6::Gui Qt6::Quick Qt6::Quick3D)

install(TARGETS robotarm3d RUNTIME DESTINATION bin)
