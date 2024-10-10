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

QtObject {
    /*
       Assets are dedicated to 600p, but can also be used for 1080p
    */
    readonly property bool changeWindowSize: false // true for testing purpore

    readonly property int screenWidth: changeWindowSize ? 1024 : Screen.width  // or for testing purpore 1920, 1280
    readonly property int screenHeight: changeWindowSize ? 600 : Screen.height // or for testing purpore 1080, 720

    readonly property int minScreenWidth: 1024
    readonly property int minScreenHeight: 600

    readonly property real marginFactor: 1.5

    /* If verboseMode is true, console.debug() will output */
    property bool verboseMode: _debugMsg ? true : false

    /* Menu parameters masked or not */
    property bool menuActivated: true

    /* Shadow can be activated */
    property bool shadowMenuAvailable: false

    /* text color */
    readonly property color blueColor: "#ff08192d"
    readonly property color highlightedBlueColor: "#ff20a5e1"

    /* default rotation values, ie animation starting position */
    property int rotation1Default : 180
    property int rotation2Default : 0
    property int rotation3Default : -190
    property int rotation4Default : 113
    property int rotation5Default : 0
    property int rotationClampDefault : 0

    /* for light tuning */
    property int lightRotationX : -40
    property int lightRotationY : 60

    /* Ponderate pixel size for other resolution (base is 1024 width) */
    function getPixelSize(basePixelSize) {
        var factor = screenWidth/minScreenWidth

        var pixelSize = Math.floor(basePixelSize * factor)
        //console.log("Pixel size is " + pixelSize)
        return pixelSize
    }

}

