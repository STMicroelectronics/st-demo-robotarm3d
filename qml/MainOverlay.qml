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
import QtQuick.Layouts 1.15
import SystemInfo 1.0

Item {
    id: root
    property alias buttonShadowChecked: buttonShadow.checked
    property alias zoomValue: sliderZoom.value
    property alias rotation1: sliderRotation1.value
    property alias rotation2: sliderRotation2.value
    property alias rotation3: sliderRotation3.value
    property alias rotation4: sliderRotation4.value
    property alias rotation5: sliderRotation5.value
    property alias rotationClamp: sliderRotationClamp.value
    property bool fullAnimationActivated: fullAnimationButton.checked && leftTab
    property bool menuVisible: true
    property bool leftTab: true
    property string gpuPercentText: (systemInfo.gpuPercent != -1) ? " / " + systemInfo.gpuPercent + "%" : ""
    property string gpuText: (systemInfo.gpuPercent != -1) ? " / GPU" : ""

    Component.onCompleted: {
        if (constants.verboseMode) console.debug("MainOverlay instanciated")
        fullAnimationButton.checked = true
    }

    /* menu overlay */
    Image {
        id: mainOverlay
        source: "/assets/UI_overlay.png"
        fillMode: Image.Stretch
        anchors.fill: parent

        /* Left Bottom Info */
        Text {
            id: mpuTextNb
            anchors { left: parent.left; bottom: parent.bottom }
            anchors.bottomMargin: (constants.screenWidth > 1024) ? constants.getPixelSize(10) : 0
            anchors.leftMargin: constants.getPixelSize(20 * ((constants.screenWidth > 1024) ? (constants.marginFactor) : 1))
            text: systemInfo.percent + "%" + gpuPercentText
            color: "white"
            fontSizeMode: Text.FixedSize
            font.pointSize: constants.getPixelSize(15)
            font.family: myFont.name
            visible: (systemInfo.percent != -1) && (!_noperf)
            Text {
                id: mpuText
                anchors { left: parent.left; bottom: parent.top }
                anchors.bottomMargin: constants.getPixelSize(-5)
                anchors.leftMargin: constants.getPixelSize(0)
                text: "CPU" + gpuText
                color: constants.highlightedBlueColor
                fontSizeMode: Text.FixedSize
                font.pointSize: constants.getPixelSize(15)
                font.family: myFont.name
            }
        }

        /* Bottom Info */
        Text {
            id: fpsTextNb
            anchors { right: parent.right; bottom: parent.bottom }
            anchors.bottomMargin: (constants.screenWidth > 1024) ? constants.getPixelSize(10) : 0
            anchors.rightMargin: constants.getPixelSize(30 * ((constants.screenWidth > 1024) ? (constants.marginFactor) : 1))
            text: systemInfo.fps
            color: "white"
            fontSizeMode: Text.FixedSize
            font.pointSize: constants.getPixelSize(15)
            font.family: myFont.name
            visible: !_noperf
            Text {
                id: fpsText
                anchors { right: parent.right; bottom: parent.top }
                anchors.bottomMargin: constants.getPixelSize(-5)
                text: "FPS"
                color: constants.highlightedBlueColor
                fontSizeMode: Text.FixedSize
                font.pointSize: constants.getPixelSize(15)
                font.family: myFont.name
            }
        }
    }

    /* quit menu */
    Image {
        id: quit
        anchors { left: parent.left; top: parent.top }
        anchors.topMargin: constants.getPixelSize(10 * ((constants.screenWidth > 1024) ? (constants.marginFactor) : 1))
        anchors.leftMargin: constants.getPixelSize(30 * ((constants.screenWidth > 1024) ? (constants.marginFactor) : 1))
        source: "/assets/Quit_normal.png"

        MouseArea {
            id: quitApp
            anchors.fill: parent
            anchors.margins: constants.getPixelSize(-10)
            onClicked: {
                Qt.quit()
            }
        }
    }

    /* parameters menu */
    Image {
        id: menuIcon
        source: "/assets/3d_menu_normal.png"
        anchors { right: parent.right; top: parent.top }
        anchors.topMargin: constants.getPixelSize(10 * ((constants.screenWidth > 1024) ? (constants.marginFactor) : 1))
        anchors.rightMargin: constants.getPixelSize(30 * ((constants.screenWidth > 1024) ? (constants.marginFactor) : 1))

        MouseArea {
            id: menuArea
            anchors.fill: parent
            anchors.margins: constants.getPixelSize(-10)
            onClicked: {
                if (!menuVisible) {
                    menuAppear.start()
                    if (constants.menuActivated) menuVisible = true
                }
                else {
                    menuVanish.start()
                    if (constants.menuActivated) menuVisible = false
                }
            }
        }
    }

    Image {
        id: menuBg
        anchors { right: parent.right; top: parent.top }
        anchors.rightMargin: constants.getPixelSize(15)
        anchors.topMargin: constants.getPixelSize(80)
        visible: true
        opacity: 0.8
        source: "/assets/menu_bg.png"
        height: menuLayout.height
        width: menuLayout.width
        PropertyAnimation {
            id: menuAppear
            target: menuBg; property: "opacity"; from: 0; to: 0.8; duration: 300
        }
        PropertyAnimation {
            id: menuVanish
            target: menuBg; property: "opacity"; from: 0.8; to: 0; duration: 300
        }

        Image {
            id: controls3D
            source: "/assets/menu_tab_left_active.png"
            anchors { top: parent.top; horizontalCenter: parent.horizontalCenter }
            width: menuLayout.width
            height: constants.getPixelSize(35)
            fillMode: Image.Stretch
        }

        ColumnLayout {
            id: menuLayout
            anchors { top: parent.top; horizontalCenter: parent.horizontalCenter }
            RowLayout {
                Layout.alignment: Qt.AlignCenter
                spacing: constants.getPixelSize(50)
                Text {
                    id: leftText
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: constants.getPixelSize(20)
                    text: qsTr("View settings")
                    color: constants.blueColor
                    fontSizeMode: Text.FixedSize
                    font.pointSize: constants.getPixelSize(15)
                    font.family: myFont.name
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            controls3D.source = "/assets/menu_tab_left_active.png"
                            rightText.color = constants.highlightedBlueColor
                            leftText.color = constants.blueColor
                            leftTab = true
                        }
                    }
                }
                Text {
                    id: rightText
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: constants.getPixelSize(20)
                    text: qsTr("Manual controls")
                    color: constants.highlightedBlueColor
                    fontSizeMode: Text.FixedSize
                    font.pointSize: constants.getPixelSize(15)
                    font.family: myFont.name
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            controls3D.source = "/assets/menu_tab_right_active.png"
                            leftText.color = constants.highlightedBlueColor
                            rightText.color = constants.blueColor
                            leftTab = false
                            /* reset position to default */
                            rotation1 = constants.rotation1Default
                            rotation2 = constants.rotation2Default
                            rotation3 = constants.rotation3Default
                            rotation4 = constants.rotation4Default
                            rotation5 = constants.rotation5Default
                            rotationClamp = constants.rotationClampDefault
                        }
                    }
                }
            }

            /* 3D settings */
            CustomButton {
                id: buttonShadow
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: constants.getPixelSize(10)
                text: qsTr("Enable shadows")
                visible: leftTab && constants.shadowMenuAvailable
            }

            CustomButton {
                id: fullAnimationButton
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: constants.getPixelSize(10)
                text: qsTr("Full animation")
                visible: leftTab
            }

            CustomSlider {
                id: sliderZoom
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: constants.getPixelSize(10)
                sliderText: qsTr("Zoom")
                value: 1
                visible: leftTab
            }

            /* 3D controls */
            CustomSlider {
                id: sliderRotation1
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: constants.getPixelSize(10)
                sliderText: qsTr("Robot arm-1")
                value: constants.rotation1Default
                from: -180
                to: 180
                visible: !leftTab
            }

            CustomSlider {
                id: sliderRotation2
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: constants.getPixelSize(10)
                sliderText: qsTr("Robot arm-2")
                value: constants.rotation2Default
                from: 0
                to: 90
                visible: !leftTab
            }

            CustomSlider {
                id: sliderRotation3
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: constants.getPixelSize(10)
                sliderText: qsTr("Robot arm-3")
                value: constants.rotation3Default
                from: -90
                to: -190
                visible: !leftTab
            }

            CustomSlider {
                id: sliderRotation4
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: constants.getPixelSize(10)
                sliderText: qsTr("Robot arm-4")
                value: constants.rotation4Default
                from: 115
                to: 200
                visible: !leftTab
            }

            CustomSlider {
                id: sliderRotation5
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: constants.getPixelSize(10)
                sliderText: qsTr("Robot arm-5")
                value: constants.rotation5Default
                from: 0
                to: 360
                visible: !leftTab
            }

            CustomSlider {
                id: sliderRotationClamp
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: constants.getPixelSize(10)
                sliderText: qsTr("Robot clamp")
                value: constants.rotationClampDefault
                from: 0
                to: 90
                visible: !leftTab
            }
        }
    }
}
