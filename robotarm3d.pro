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

QT += quick

HEADERS += \
    $$files(src/*.h) \
    $$files(src/*.hpp)

SOURCES += \
    $$files(src/*.c) \
    $$files(src/*.cpp)

RESOURCES += \
qml.qrc

FORMS +=

# Default rules for deployment.
unix {
    target.path = /usr/local/demo/robotarm3d
    INSTALLS += target
}

DISTFILES +=

