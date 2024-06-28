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
import QtQuick3D 1.15

Model {
    id: floor
    source: "#Cube"

    PrincipledMaterial {
        id: floor_001_material
        baseColor: "white"
        metalness: 1.0
        roughness: 1.0
        cullMode: Material.NoCulling
    }
    materials: [
        floor_001_material
    ]
}
