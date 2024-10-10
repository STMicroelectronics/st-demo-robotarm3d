/*
 * @attention
 *
 * Copyright (c) 2024 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 */

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Timeline 1.0
import QtQuick.Controls 2.15
import QtQuick3D
import SystemInfo 1.0

Window {
    id: window
    width: constants.screenWidth
    height: constants.screenHeight
    minimumWidth: constants.minScreenWidth
    minimumHeight: constants.minScreenHeight
    visibility: _windowVisibility ? ApplicationWindow.Windowed : ApplicationWindow.FullScreen
    visible: true
    color: "black"

    /* Size management */
    Constants {
        id: constants
    }

    /* Load custom font */
    FontLoader {
        id: myFont
        source: "/assets/Font/SairaCondensed-Medium.ttf"
    }

    /* Message during 3D textures compilation and full animation loading */
    Rectangle{
        id: loadingMsg
        width: constants.screenWidth
        height: constants.screenHeight
        color: "black"
        Text {
            id: info1
            anchors.centerIn: parent
            text: qsTr("Loading 3D ...")
            color: constants.highlightedBlueColor
            fontSizeMode: Text.FixedSize
            font.pointSize: constants.getPixelSize(30)
            font.family: myFont.name
        }
        z: 100
    }

    /* Timer to start loading Main component */
    Timer {
        id: mainLoadingTimer
        running: true
        interval: 500
        repeat: false
        onTriggered: {
            if (constants.verboseMode) console.debug("Main component loader active")
            mainLoader.active = true
        }
    }

    /* Timer to end displaying "Loading 3D ..." message */
    Timer {
        id: loadingViewTimer
        running: true
        interval: 3000
        repeat: false
        onTriggered: {
            if (constants.verboseMode) console.debug("Loading message no more visible")
            loadingMsg.visible = false
        }
    }

    /* Main component loader */
    Loader {
        id: mainLoader
        source: "/qml/Main.qml"
        active: false
    }
}
