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
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Basic

RowLayout {
    id: textAndSlider
    property string sliderText: ""
    property alias value: controlSlider.value
    property alias from: controlSlider.from
    property alias to: controlSlider.to

    Text {
        Layout.alignment: Qt.AlignLeft
        Layout.margins: constants.getPixelSize(10)
        text: sliderText
        color: constants.highlightedBlueColor
        fontSizeMode: Text.FixedSize
        font.pointSize: constants.getPixelSize(15)
        font.family: myFont.name
    }
    Slider {
        id: controlSlider

        background: Rectangle {
            x: controlSlider.leftPadding
            y: controlSlider.topPadding + controlSlider.availableHeight / 2 - height / 2
            implicitWidth: constants.getPixelSize(150)
            implicitHeight: constants.getPixelSize(16)
            width: controlSlider.availableWidth
            height: implicitHeight
            radius: constants.getPixelSize(8)
            color: "white"
            opacity: 0.5

            Rectangle {
                width: controlSlider.visualPosition * parent.width + (1 - controlSlider.visualPosition) * controlSlider.leftPadding
                height: parent.height
                color: constants.highlightedBlueColor
                radius: constants.getPixelSize(8)
            }
        }

        handle: Rectangle {
            x: controlSlider.leftPadding + controlSlider.visualPosition * (controlSlider.availableWidth - width)
            y: controlSlider.topPadding + controlSlider.availableHeight / 2 - height / 2
            implicitWidth: constants.getPixelSize(16)
            implicitHeight: constants.getPixelSize(16)
            radius: constants.getPixelSize(8)
            color: controlSlider.pressed ? "white" : "white"
            //border.color: "#bdbebf"
        }

        onValueChanged: {
            if (constants.verboseMode) console.debug("Slider value is: " + controlSlider.value.toFixed(2))
        }
    }
}


