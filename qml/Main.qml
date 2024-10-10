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

Item {
    id: rootMain
    width: constants.screenWidth
    height: constants.screenHeight
    visible: false

    Component.onCompleted: {
        if (constants.verboseMode) console.debug("Main instanciated")
        rootMain.visible = true
    }

    /* camera and background rotation (3 -> 180 degrees) */
    property real angle: 6 * mouseArea.rotationY

    /* shadow enabler */
    property bool shadowEnabled: (constants.shadowMenuAvailable) ? mainOverlay.buttonShadowChecked : false

    /* full animation */
    property bool fullAnimationActivated: mainOverlay.fullAnimationActivated

    /* clamp zoom */
    function zoomRange() {
        const zoomMinValue = 40
        const zoomMaxValue = 105
        var zoomValue = zoomMaxValue * mainOverlay.zoomValue
        if (zoomValue<= zoomMinValue) {
            zoomValue = zoomMinValue
        }
        else if (zoomValue >= zoomMaxValue) {
            zoomValue = zoomMaxValue
        }
        return zoomValue
    }

    /* Perf info */
    SystemInfo {
        id: systemInfo
    }

    /* user rotation icon */
    Image {
        id: rotation
        anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter }
        anchors.bottomMargin: constants.getPixelSize(5 * ((constants.screenWidth > 1024) ? (constants.marginFactor) : 1))
        source: "/assets/rotation.png"
        antialiasing: true
        width: 100
        height: 40
        z: 1
    }

    /* Object rotation */
    Rectangle {
        anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter }
        width: constants.screenWidth
        height: constants.screenHeight / 5
        color: "transparent"
        MouseArea {
            id: mouseArea
            z: -1
            property real mouseXprev: 0
            property real rotationY: 0
            anchors.fill: parent

            hoverEnabled: true

            /* to reset mouseXprev when started with finger */
            onPressed: {
                mouseArea.mouseXprev = mouseArea.mouseX
            }

            /* finger or mouse move */
            onMouseXChanged: {
                //console.log("mouse: " + mouseArea.mouseX + ", " +  mouseArea.mouseY)
                //console.log("rotation before: " + mouseArea.rotationY)
                if (mouseArea.pressed) {
                    mouseArea.rotationY += (mouseArea.mouseX - mouseArea.mouseXprev) / 5
                    if (mouseArea.rotationY > 30) {
                        mouseArea.rotationY = 30
                    }
                    else if (mouseArea.rotationY < -30) {
                        mouseArea.rotationY = -30
                    }
                    //console.log("rotation after : " + mouseArea.rotationY)
                }
                mouseArea.mouseXprev = mouseArea.mouseX
            }

            /* reset animation for conviniance */
            onDoubleClicked: {
                mouseArea.mouseXprev = mouseArea.mouseX
                mouseArea.rotationY = 0
                //turn.restart()
            }
        }
    }

    /* info overlay */
    MainOverlay {
        id: mainOverlay
        anchors.fill: parent
        z: 1
    }

    Image {
        id: background
        source: (Screen.width > 1024) ? "/assets/images/shot-panoramic-composition-empty-interior_1920.png"
                                      : "/assets/images/shot-panoramic-composition-empty-interior_1024.png"
        width: parent.width
        height: parent.height
        fillMode: Image.Stretch
        z: -1
    }

    /* 3D scene */
    View3D {
        id: view
        anchors.fill: parent
        renderMode: View3D.Inline // mandatory to get View3D update after Quick 2D settings
        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            //clearColor: "#ff284367"
            //backgroundMode: SceneEnvironment.Color
            backgroundMode: SceneEnvironment.Transparent
            antialiasingMode: SceneEnvironment.NoAA /* MSAA does not bring visual benefit */
            //antialiasingQuality: SceneEnvironment.High
            depthPrePassEnabled: true /* Positive performance impact */
        }

        Node {
            id: scene

            PerspectiveCamera {
                id: camera
                position: Qt.vector3d(0, 100, 500)
                eulerRotation.y : 0
                fieldOfViewOrientation: PerspectiveCamera.Horizontal
                /* zoomRange between min and 100 - 0.7 in line with bg perspective */
                fieldOfView: 0.7 * zoomRange()
            }

            Floor {
                id: bg
                position: Qt.vector3d(0, - scale.y * 50, 0)
                eulerRotation.y: angle
                scale.x: 3.2
                scale.y: 0.1
                scale.z: 3.2
                //castsShadows: shadowEnabled
                //receivesShadows: shadowEnabled
            }

            DirectionalLight {
                id: sunLight
                visible: true
                ambientColor: Qt.rgba(0.1, 0.1, 0.1, 1.0)
                position: Qt.vector3d(0, 200, 0)
                color: "#ababce"
                eulerRotation: Qt.vector3d(mainOverlay.lightRotationX, mainOverlay.lightRotationY, 0)
                shadowMapQuality: Light.ShadowMapQualityHigh
                castsShadow: shadowEnabled
                shadowFactor: 10
                brightness: 6
                shadowMapFar: 200
            }

            RobotarmEnhanced {
                id: robotarm
                position: Qt.vector3d(0, 0, 0)
                eulerRotation.y: angle
                scale.x: 100
                scale.y: 100
                scale.z: 100
                rotation1: mainOverlay.rotation1
                rotation2: mainOverlay.rotation2
                rotation3: mainOverlay.rotation3
                rotation4: mainOverlay.rotation4
                rotation5: mainOverlay.rotation5
                rotationClamp1: mainOverlay.rotationClamp
                rotationClamp2: - mainOverlay.rotationClamp
                fullAnimation: fullAnimationActivated
            }

        }
    }
}
