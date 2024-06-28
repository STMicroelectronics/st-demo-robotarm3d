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
import QtQuick.Timeline 1.0

Node {
    id: rOOT
    property bool fullAnimation: false
    property alias rotation1 : empty_043.eulerRotation.y
    property alias rotation2 : empty_044.eulerRotation.y
    property alias rotation3 : empty_046.eulerRotation.y
    property alias rotation4 : empty_048.eulerRotation.z
    property alias rotation5 : empty_051.eulerRotation.z
    property alias rotationClamp1 : cylinder_040.eulerRotation.x
    property alias rotationClamp2 : cylinder_039.eulerRotation.x

    onFullAnimationChanged: {
            if (fullAnimationActivated) {
                if (constants.verboseMode) console.debug("fullAnimationActivated true")
                robotAnimation.stop()
                /* reset to original rotation */
                empty_043.rotation = Qt.quaternion(3.09086e-08, -1.25607e-15, -0.707107, 0.707107)
                empty_044.rotation = Qt.quaternion(0.707107, -0.707107, 0, 0)
                empty_046.rotation = Qt.quaternion(-0.495601, 0.498422, 0.503919, 0.502016)
                empty_048.rotation = Qt.quaternion(0.611884, -0.703233, -0.0739207, 0.354398)
                empty_051.rotation = Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
                cylinder_039.rotation = Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
                cylinder_040.rotation = Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
                robotAnimation.start()
            }
            else {
                if (constants.verboseMode) console.debug("fullAnimationActivated false")
                robotAnimation.stop()
            }
    }

    Node {
        id: empty_041

        Model {
            id: cylinder_023
            rotation: Qt.quaternion(0.994554, 0, -0.104219, 0)
            source: "/assets/meshes/cylinder_023.mesh"
            materials: [
                mech_Arm__02_material,
                clamps_material
                //metal_Stainless_material
            ]
        }

        Node {
            id: empty_043
            y: 0.511521
            rotation: Qt.quaternion(3.09086e-08, -1.25607e-15, -0.707107, 0.707107)
            scale.y: 1
            scale.z: 1

            Model {
                id: cylinder_035
                rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                scale.y: 1
                scale.z: 1
                source: "/assets/meshes/cylinder_035.mesh"
                materials: [
                    mech_Arm__03_material
                ]
            }

            Node {
                id: empty_044
                y: -0.00117326
                z: -0.237438
                rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                scale.y: 1
                scale.z: 1

                Model {
                    id: cube_006
                    source: "/assets/meshes/cube_006.mesh"
                    materials: [
                        mech_Arm__02_material
                    ]
                }

                Node {
                    id: empty_045
                    y: 0.414304
                    rotation: Qt.quaternion(0.707074, 0.707074, 0.00683759, -0.00683763)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1

                    Model {
                        id: cube_008
                        z: 0.414304
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.y: 1
                        scale.z: 1
                        source: "/assets/meshes/cube_008.mesh"
                        materials: [
                            mech_Arm__02_material
                        ]
                    }

                    Node {
                        id: empty_046
                        z: -0.39859
                        rotation: Qt.quaternion(-0.495601, 0.498422, 0.503919, 0.502016)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1

                        Model {
                            id: cube_021
                            rotation: Qt.quaternion(1, 0, 0, -0.000221285)
                            scale.x: 1
                            scale.y: 1
                            source: "/assets/meshes/cube_021.mesh"
                            materials: [
                                mech_Arm__03_material
                            ]
                        }

                        Node {
                            id: empty_047
                            y: 0.367908
                            rotation: Qt.quaternion(0.668996, 0.668997, 0.229006, -0.229006)
                            scale.y: 1
                            scale.z: 1

                            Model {
                                id: cube_022
                                x: 4.18158e-06
                                y: 3.68672e-06
                                z: 0.35585
                                rotation: Qt.quaternion(0.672395, -0.672298, -0.219124, 0.218827)
                                scale.y: 1
                                scale.z: 1
                                source: "/assets/meshes/cube_022.mesh"
                                materials: [
                                    mech_Arm__03_material
                                ]
                            }

                            Node {
                                id: empty_048
                                z: -0.342267
                                rotation: Qt.quaternion(0.611884, -0.703233, -0.0739207, 0.354398)

                                Model {
                                    id: cube_023
                                    source: "/assets/meshes/cube_023.mesh"
                                    materials: [
                                        mech_Arm__02_material
                                    ]
                                }

                                Node {
                                    id: empty_051
                                    x: 0.389575
                                    y: -0.162363
                                    z: -1.62506e-05
                                    rotation: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)

                                    Node {
                                        id: empty_049
                                        x: 0.0690344
                                        y: -0.00197406
                                        z: -0.437096
                                        rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                                        scale.y: 1
                                        scale.z: 1

                                        Model {
                                            id: cylinder_040
                                            x: -0.000628306
                                            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
                                            source: "/assets/meshes/cylinder_040.mesh"
                                            materials: [
                                                //clamps_material
                                                chrome_Metal_material // better rendering effect
                                            ]
                                        }
                                    }

                                    Node {
                                        id: empty_050
                                        x: -0.0684057
                                        y: -0.00197318
                                        z: -0.437096
                                        rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                                        scale.y: 1
                                        scale.z: 1

                                        Model {
                                            id: cylinder_039
                                            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
                                            source: "/assets/meshes/cylinder_039.mesh"
                                            materials: [
                                                //clamps_material
                                                chrome_Metal_material // better rendering effect
                                            ]
                                        }
                                    }

                                    Model {
                                        id: grab
                                        z: 0.130928
                                        rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
                                        scale.x: 1
                                        scale.z: 1
                                        source: "/assets/meshes/grab.mesh"
                                        materials: [
                                            chrome_Metal_material
                                        ]
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Model {
        id: cube
        x: -1.32942
        y: 0.187929
        source: "/assets/meshes/cube.mesh"
        visible: fullAnimation /* only visible when self animation */
        materials: [
            material_001_material
        ]
    }

    Timeline {
        id: timeline0
        startFrame: 0
        endFrame: 7000
        currentFrame: 0
        enabled: fullAnimation
        animations: [
            TimelineAnimation {
                id: robotAnimation
                duration: 7000
                from: 0
                to: 7000
                running: true
                pingPong: true
                loops: -1
            }
        ]

        KeyframeGroup {
            target: empty_045
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-1.42702e-07, 0.414304, -2.01743e-07)
            }
        }

        KeyframeGroup {
            target: empty_045
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.707074, 0.707074, 0.00683759, -0.00683763)
            }
        }


        KeyframeGroup {
            target: cube_021
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-4.51467e-07, -2.7148e-07, -2.48782e-08)
            }
        }

        KeyframeGroup {
            target: cube_021
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(1, -3.18487e-08, -5.23323e-08, -0.000221285)
            }
        }


        KeyframeGroup {
            target: empty_048
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-1.09896e-07, 4.14439e-08, -0.342267)
            }
            Keyframe {
                frame: 66.6667
                value: Qt.vector3d(-1.546e-07, -7.17118e-08, -0.342267)
            }
            Keyframe {
                frame: 100
                value: Qt.vector3d(-5.84405e-08, 1.67638e-07, -0.342267)
            }
            Keyframe {
                frame: 133.333
                value: Qt.vector3d(-1.45286e-07, -5.58794e-08, -0.342267)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-5.21541e-08, 1.2666e-07, -0.342267)
            }
            Keyframe {
                frame: 200
                value: Qt.vector3d(-8.10251e-08, 1.62981e-07, -0.342267)
            }
            Keyframe {
                frame: 233.333
                value: Qt.vector3d(-7.07805e-08, -8.19564e-08, -0.342267)
            }
            Keyframe {
                frame: 266.667
                value: Qt.vector3d(-2.19792e-07, -2.23517e-08, -0.342267)
            }
            Keyframe {
                frame: 300
                value: Qt.vector3d(1.58325e-08, 7.63685e-08, -0.342267)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-2.95229e-07, 1.21072e-08, -0.342267)
            }
            Keyframe {
                frame: 366.667
                value: Qt.vector3d(-2.04891e-08, -7.72998e-08, -0.342267)
            }
            Keyframe {
                frame: 400
                value: Qt.vector3d(-3.46452e-07, -3.63216e-08, -0.342267)
            }
            Keyframe {
                frame: 433.333
                value: Qt.vector3d(-1.51806e-07, 2.10479e-07, -0.342267)
            }
            Keyframe {
                frame: 466.667
                value: Qt.vector3d(-2.63564e-07, 2.22586e-07, -0.342267)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-1.84868e-07, 1.0361e-07, -0.342267)
            }
            Keyframe {
                frame: 533.333
                value: Qt.vector3d(-1.99303e-07, 1.62981e-07, -0.342267)
            }
            Keyframe {
                frame: 566.667
                value: Qt.vector3d(-1.47149e-07, 1.50874e-07, -0.342267)
            }
            Keyframe {
                frame: 600
                value: Qt.vector3d(-1.77883e-07, 3.07336e-08, -0.342267)
            }
            Keyframe {
                frame: 633.333
                value: Qt.vector3d(-2.45869e-07, 1.63913e-07, -0.342267)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-1.03377e-07, 5.96046e-08, -0.342267)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(-1.03377e-07, 5.96046e-08, -0.342267)
            }
            Keyframe {
                frame: 1533.33
                value: Qt.vector3d(-1.09896e-07, 1.19209e-07, -0.342267)
            }
            Keyframe {
                frame: 1566.67
                value: Qt.vector3d(-2.21655e-07, 3.44589e-08, -0.342267)
            }
            Keyframe {
                frame: 1600
                value: Qt.vector3d(-8.28877e-08, 1.79745e-07, -0.342267)
            }
            Keyframe {
                frame: 1633.33
                value: Qt.vector3d(-2.56114e-07, 1.78814e-07, -0.342267)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-1.89058e-07, 1.55531e-07, -0.342267)
            }
            Keyframe {
                frame: 1700
                value: Qt.vector3d(-1.30967e-07, 1.18511e-07, -0.342267)
            }
            Keyframe {
                frame: 1733.33
                value: Qt.vector3d(-1.89058e-07, 8.3819e-08, -0.342267)
            }
            Keyframe {
                frame: 1766.67
                value: Qt.vector3d(-1.49943e-07, -4.65661e-09, -0.342267)
            }
            Keyframe {
                frame: 1800
                value: Qt.vector3d(-2.44007e-07, 1.39698e-07, -0.342267)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-1.68569e-07, 4.74975e-08, -0.342267)
            }
            Keyframe {
                frame: 1866.67
                value: Qt.vector3d(-9.87202e-08, 1.23866e-07, -0.342267)
            }
            Keyframe {
                frame: 1900
                value: Qt.vector3d(-6.89179e-08, 1.23866e-07, -0.342267)
            }
            Keyframe {
                frame: 1933.33
                value: Qt.vector3d(-2.37487e-07, 1.38767e-07, -0.342267)
            }
            Keyframe {
                frame: 1966.67
                value: Qt.vector3d(-8.3819e-08, 2.03028e-07, -0.342267)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-1.75089e-07, -1.11759e-08, -0.342268)
            }
            Keyframe {
                frame: 2033.33
                value: Qt.vector3d(-2.98955e-07, 1.10827e-07, -0.342267)
            }
            Keyframe {
                frame: 2066.67
                value: Qt.vector3d(-3.15718e-07, -8.3819e-09, -0.342267)
            }
            Keyframe {
                frame: 2100
                value: Qt.vector3d(-1.17347e-07, 7.63685e-08, -0.342267)
            }
            Keyframe {
                frame: 2133.33
                value: Qt.vector3d(-1.24797e-07, 8.84756e-08, -0.342267)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-2.55182e-07, 6.0536e-08, -0.342267)
            }
            Keyframe {
                frame: 2200
                value: Qt.vector3d(-2.33296e-07, 1.51806e-07, -0.342267)
            }
            Keyframe {
                frame: 2233.33
                value: Qt.vector3d(-1.82074e-07, -7.35745e-08, -0.342267)
            }
            Keyframe {
                frame: 2266.67
                value: Qt.vector3d(-1.95578e-07, 1.56462e-07, -0.342267)
            }
            Keyframe {
                frame: 2300
                value: Qt.vector3d(-2.97092e-07, 7.26432e-08, -0.342267)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-2.31899e-07, -9.31323e-09, -0.342268)
            }
            Keyframe {
                frame: 2366.67
                value: Qt.vector3d(-2.98955e-07, 7.63685e-08, -0.342267)
            }
            Keyframe {
                frame: 2400
                value: Qt.vector3d(-1.82074e-07, 3.1665e-08, -0.342267)
            }
            Keyframe {
                frame: 2433.33
                value: Qt.vector3d(-3.08268e-07, 4.84288e-08, -0.342267)
            }
            Keyframe {
                frame: 2466.67
                value: Qt.vector3d(-5.7742e-08, 3.81842e-08, -0.342267)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-1.07568e-07, 1.08033e-07, -0.342267)
            }
            Keyframe {
                frame: 2533.33
                value: Qt.vector3d(-2.65427e-07, 9.22009e-08, -0.342267)
            }
            Keyframe {
                frame: 2566.67
                value: Qt.vector3d(-1.25263e-07, 2.70084e-08, -0.342267)
            }
            Keyframe {
                frame: 2600
                value: Qt.vector3d(-2.84053e-08, 2.10479e-07, -0.342267)
            }
            Keyframe {
                frame: 2633.33
                value: Qt.vector3d(-2.41213e-07, 1.07102e-07, -0.342267)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-2.94298e-07, 6.79865e-08, -0.342267)
            }
            Keyframe {
                frame: 2700
                value: Qt.vector3d(-3.72529e-07, -2.14204e-08, -0.342267)
            }
            Keyframe {
                frame: 2733.33
                value: Qt.vector3d(-3.35276e-07, 2.70084e-08, -0.342267)
            }
            Keyframe {
                frame: 2766.67
                value: Qt.vector3d(4.56348e-08, 5.12227e-08, -0.342267)
            }
            Keyframe {
                frame: 2800
                value: Qt.vector3d(-7.91624e-08, 1.33179e-07, -0.342267)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-1.21072e-07, 1.50874e-07, -0.342267)
            }
            Keyframe {
                frame: 2866.67
                value: Qt.vector3d(-6.89179e-08, 2.77534e-07, -0.342267)
            }
            Keyframe {
                frame: 2900
                value: Qt.vector3d(-1.41561e-07, -5.68107e-08, -0.342267)
            }
            Keyframe {
                frame: 2933.33
                value: Qt.vector3d(-2.81259e-07, 1.22935e-07, -0.342267)
            }
            Keyframe {
                frame: 2966.67
                value: Qt.vector3d(-2.468e-07, 9.59262e-08, -0.342267)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-1.71363e-07, 5.96046e-08, -0.342267)
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(-1.71363e-07, 5.96046e-08, -0.342267)
            }
            Keyframe {
                frame: 3533.33
                value: Qt.vector3d(-2.03028e-07, 6.70552e-08, -0.342267)
            }
            Keyframe {
                frame: 3566.67
                value: Qt.vector3d(-1.00583e-07, 4.65661e-09, -0.342267)
            }
            Keyframe {
                frame: 3600
                value: Qt.vector3d(-7.26432e-08, 1.24797e-07, -0.342267)
            }
            Keyframe {
                frame: 3633.33
                value: Qt.vector3d(-1.80677e-07, 9.68575e-08, -0.342267)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(-9.31323e-08, 1.81608e-07, -0.342267)
            }
        }

        KeyframeGroup {
            target: empty_048
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.611884, -0.703233, -0.0739207, 0.354398)
            }
            Keyframe {
                frame: 66.6667
                value: Qt.quaternion(0.611339, -0.703487, -0.0728737, 0.35505)
            }
            Keyframe {
                frame: 100
                value: Qt.quaternion(0.609783, -0.704193, -0.0698954, 0.35692)
            }
            Keyframe {
                frame: 133.333
                value: Qt.quaternion(0.607337, -0.705239, -0.0652423, 0.359893)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.604123, -0.706497, -0.0591813, 0.363861)
            }
            Keyframe {
                frame: 200
                value: Qt.quaternion(0.600266, -0.707832, -0.0519845, 0.368718)
            }
            Keyframe {
                frame: 233.333
                value: Qt.quaternion(0.595892, -0.709115, -0.0439236, 0.374352)
            }
            Keyframe {
                frame: 266.667
                value: Qt.quaternion(0.591132, -0.710234, -0.0352648, 0.380642)
            }
            Keyframe {
                frame: 300
                value: Qt.quaternion(0.586115, -0.711096, -0.0262652, 0.387455)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.580973, -0.711641, -0.0171674, 0.394644)
            }
            Keyframe {
                frame: 366.667
                value: Qt.quaternion(0.575833, -0.711834, -0.00819678, 0.402048)
            }
            Keyframe {
                frame: 400
                value: Qt.quaternion(0.570817, -0.711675, 0.000441293, 0.409495)
            }
            Keyframe {
                frame: 433.333
                value: Qt.quaternion(0.566043, -0.711196, 0.0085628, 0.4168)
            }
            Keyframe {
                frame: 466.667
                value: Qt.quaternion(0.561618, -0.710455, 0.0160052, 0.423773)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.557641, -0.709535, 0.0226258, 0.430215)
            }
            Keyframe {
                frame: 533.333
                value: Qt.quaternion(0.554203, -0.708538, 0.0282985, 0.435927)
            }
            Keyframe {
                frame: 566.667
                value: Qt.quaternion(0.551388, -0.707577, 0.0329096, 0.440708)
            }
            Keyframe {
                frame: 600
                value: Qt.quaternion(0.549275, -0.706766, 0.03635, 0.444361)
            }
            Keyframe {
                frame: 633.333
                value: Qt.quaternion(0.547945, -0.706216, 0.0385079, 0.446691)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1533.33
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1566.67
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1600
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1633.33
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1700
                value: Qt.quaternion(0.547481, -0.706016, 0.0392583, 0.447509)
            }
            Keyframe {
                frame: 1733.33
                value: Qt.quaternion(0.547481, -0.706016, 0.0392585, 0.447509)
            }
            Keyframe {
                frame: 1766.67
                value: Qt.quaternion(0.547481, -0.706016, 0.0392585, 0.447509)
            }
            Keyframe {
                frame: 1800
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1866.67
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1900
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1933.33
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 1966.67
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 2033.33
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 2066.67
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 2100
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 2133.33
                value: Qt.quaternion(0.547481, -0.706016, 0.0392583, 0.447509)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.547481, -0.706016, 0.0392584, 0.447509)
            }
            Keyframe {
                frame: 2200
                value: Qt.quaternion(0.548517, -0.706335, 0.0373595, 0.445896)
            }
            Keyframe {
                frame: 2233.33
                value: Qt.quaternion(0.551482, -0.707224, 0.0319063, 0.44123)
            }
            Keyframe {
                frame: 2266.67
                value: Qt.quaternion(0.556194, -0.70847, 0.0231851, 0.433798)
            }
            Keyframe {
                frame: 2300
                value: Qt.quaternion(0.562487, -0.709769, 0.0114218, 0.423917)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.570186, -0.710777, -0.00316359, 0.411916)
            }
            Keyframe {
                frame: 2366.67
                value: Qt.quaternion(0.579083, -0.711162, -0.0203117, 0.398119)
            }
            Keyframe {
                frame: 2400
                value: Qt.quaternion(0.588932, -0.710655, -0.0396885, 0.382823)
            }
            Keyframe {
                frame: 2433.33
                value: Qt.quaternion(0.599441, -0.709091, -0.0608621, 0.366274)
            }
            Keyframe {
                frame: 2466.67
                value: Qt.quaternion(0.610285, -0.706444, -0.0832897, 0.348643)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.621115, -0.70286, -0.106316, 0.330001)
            }
            Keyframe {
                frame: 2533.33
                value: Qt.quaternion(0.631599, -0.698583, -0.129246, 0.310418)
            }
            Keyframe {
                frame: 2566.67
                value: Qt.quaternion(0.641507, -0.693682, -0.151563, 0.29035)
            }
            Keyframe {
                frame: 2600
                value: Qt.quaternion(0.650648, -0.688262, -0.172792, 0.270362)
            }
            Keyframe {
                frame: 2633.33
                value: Qt.quaternion(0.65886, -0.682532, -0.192454, 0.251026)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.666012, -0.676782, -0.210093, 0.232927)
            }
            Keyframe {
                frame: 2700
                value: Qt.quaternion(0.672002, -0.671353, -0.22529, 0.216666)
            }
            Keyframe {
                frame: 2733.33
                value: Qt.quaternion(0.676758, -0.666605, -0.237662, 0.202862)
            }
            Keyframe {
                frame: 2766.67
                value: Qt.quaternion(0.680224, -0.662892, -0.246869, 0.19216)
            }
            Keyframe {
                frame: 2800
                value: Qt.quaternion(0.68235, -0.660516, -0.252603, 0.185226)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.683076, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 2866.67
                value: Qt.quaternion(0.683075, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 2900
                value: Qt.quaternion(0.683075, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 2933.33
                value: Qt.quaternion(0.683076, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 2966.67
                value: Qt.quaternion(0.683076, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.683075, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.683075, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 3533.33
                value: Qt.quaternion(0.683076, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 3566.67
                value: Qt.quaternion(0.683075, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 3600
                value: Qt.quaternion(0.683076, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 3633.33
                value: Qt.quaternion(0.683076, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.683075, -0.659696, -0.254576, 0.182756)
            }
            Keyframe {
                frame: 3700
                value: Qt.quaternion(0.680942, -0.662251, -0.249387, 0.188541)
            }
            Keyframe {
                frame: 3733.33
                value: Qt.quaternion(0.675254, -0.668583, -0.235652, 0.203707)
            }
            Keyframe {
                frame: 3766.67
                value: Qt.quaternion(0.667062, -0.676514, -0.216168, 0.225009)
            }
            Keyframe {
                frame: 3800
                value: Qt.quaternion(0.65752, -0.684144, -0.193767, 0.249135)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.647959, -0.690292, -0.171238, 0.272624)
            }
            Keyframe {
                frame: 3866.67
                value: Qt.quaternion(0.639523, -0.69474, -0.150698, 0.292639)
            }
            Keyframe {
                frame: 3900
                value: Qt.quaternion(0.632077, -0.698093, -0.132049, 0.309367)
            }
            Keyframe {
                frame: 3933.33
                value: Qt.quaternion(0.625112, -0.700882, -0.114684, 0.323802)
            }
            Keyframe {
                frame: 3966.67
                value: Qt.quaternion(0.618083, -0.703421, -0.0980519, 0.336985)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.610435, -0.705834, -0.0816664, 0.349997)
            }
            Keyframe {
                frame: 4033.33
                value: Qt.quaternion(0.601767, -0.70806, -0.0651987, 0.363698)
            }
            Keyframe {
                frame: 4066.67
                value: Qt.quaternion(0.592286, -0.709927, -0.048645, 0.377935)
            }
            Keyframe {
                frame: 4100
                value: Qt.quaternion(0.582354, -0.711298, -0.0320481, 0.392291)
            }
            Keyframe {
                frame: 4133.33
                value: Qt.quaternion(0.572332, -0.712097, -0.0154088, 0.406345)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.562569, -0.712316, 0.00132804, 0.419667)
            }
            Keyframe {
                frame: 4200
                value: Qt.quaternion(0.553278, -0.712026, 0.0182356, 0.431937)
            }
            Keyframe {
                frame: 4233.33
                value: Qt.quaternion(0.544236, -0.711383, 0.035222, 0.443285)
            }
            Keyframe {
                frame: 4266.67
                value: Qt.quaternion(0.535109, -0.710527, 0.0521276, 0.453974)
            }
            Keyframe {
                frame: 4300
                value: Qt.quaternion(0.525571, -0.709566, 0.0687639, 0.464287)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.515307, -0.708573, 0.0849084, 0.474525)
            }
            Keyframe {
                frame: 4366.67
                value: Qt.quaternion(0.504175, -0.707514, 0.100313, 0.484942)
            }
            Keyframe {
                frame: 4400
                value: Qt.quaternion(0.49265, -0.706103, 0.114793, 0.495517)
            }
            Keyframe {
                frame: 4433.33
                value: Qt.quaternion(0.481341, -0.704095, 0.128262, 0.506074)
            }
            Keyframe {
                frame: 4466.67
                value: Qt.quaternion(0.47082, -0.701361, 0.140736, 0.516347)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.461617, -0.697871, 0.152325, 0.526007)
            }
            Keyframe {
                frame: 4533.33
                value: Qt.quaternion(0.454133, -0.693743, 0.163075, 0.534688)
            }
            Keyframe {
                frame: 4566.67
                value: Qt.quaternion(0.448405, -0.689472, 0.172498, 0.542038)
            }
            Keyframe {
                frame: 4600
                value: Qt.quaternion(0.444368, -0.685681, 0.180001, 0.547703)
            }
            Keyframe {
                frame: 4633.33
                value: Qt.quaternion(0.44196, -0.682995, 0.18499, 0.551334)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5366.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5400
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5433.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5466.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5533.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5566.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5600
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5633.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5700
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5733.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5766.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5800
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5866.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5900
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5933.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 5966.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6033.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6066.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6100
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6133.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6200
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6233.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6266.67
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6300
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.quaternion(0.441153, -0.681988, 0.186815, 0.552608)
            }
            Keyframe {
                frame: 6366.67
                value: Qt.quaternion(0.440378, -0.681855, 0.187653, 0.553107)
            }
            Keyframe {
                frame: 6400
                value: Qt.quaternion(0.438172, -0.681469, 0.190057, 0.554512)
            }
            Keyframe {
                frame: 6433.33
                value: Qt.quaternion(0.434711, -0.680819, 0.193855, 0.556716)
            }
            Keyframe {
                frame: 6466.67
                value: Qt.quaternion(0.430166, -0.679873, 0.198861, 0.559628)
            }
            Keyframe {
                frame: 6500
                value: Qt.quaternion(0.424705, -0.67859, 0.204892, 0.56317)
            }
            Keyframe {
                frame: 6533.33
                value: Qt.quaternion(0.418487, -0.676933, 0.211766, 0.567261)
            }
            Keyframe {
                frame: 6566.67
                value: Qt.quaternion(0.411669, -0.674879, 0.21932, 0.571809)
            }
            Keyframe {
                frame: 6600
                value: Qt.quaternion(0.404398, -0.672427, 0.227402, 0.576708)
            }
            Keyframe {
                frame: 6633.33
                value: Qt.quaternion(0.396816, -0.669603, 0.235886, 0.58183)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.quaternion(0.389053, -0.666467, 0.244671, 0.587023)
            }
            Keyframe {
                frame: 6700
                value: Qt.quaternion(0.381231, -0.66309, 0.253649, 0.592146)
            }
            Keyframe {
                frame: 6733.33
                value: Qt.quaternion(0.373472, -0.659503, 0.262603, 0.597172)
            }
            Keyframe {
                frame: 6766.67
                value: Qt.quaternion(0.365924, -0.655759, 0.27129, 0.602064)
            }
            Keyframe {
                frame: 6800
                value: Qt.quaternion(0.358754, -0.651954, 0.279477, 0.606749)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.quaternion(0.352145, -0.648224, 0.286945, 0.611115)
            }
            Keyframe {
                frame: 6866.67
                value: Qt.quaternion(0.346291, -0.64474, 0.29349, 0.615026)
            }
            Keyframe {
                frame: 6900
                value: Qt.quaternion(0.341389, -0.641696, 0.298918, 0.618326)
            }
            Keyframe {
                frame: 6933.33
                value: Qt.quaternion(0.337642, -0.639296, 0.303041, 0.620858)
            }
            Keyframe {
                frame: 6966.67
                value: Qt.quaternion(0.335249, -0.637737, 0.305668, 0.622468)
            }
            Keyframe {
                frame: 7000
                value: Qt.quaternion(0.334408, -0.637188, 0.306593, 0.623028)
            }
        }


        KeyframeGroup {
            target: cylinder_023
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-3.57628e-08, 4.08967e-08, 1.43051e-07)
            }
        }

        KeyframeGroup {
            target: cylinder_023
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.994554, 0, -0.104219, 0)
            }
        }


        KeyframeGroup {
            target: empty_047
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-3.58203e-07, 0.367908, 1.45752e-07)
            }
        }

        KeyframeGroup {
            target: empty_047
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.668996, 0.668997, 0.229006, -0.229006)
            }
        }


        KeyframeGroup {
            target: empty_041
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(0, 0, 0)
            }
        }

        KeyframeGroup {
            target: empty_041
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(1, 0, 0, 0)
            }
        }


        KeyframeGroup {
            target: cylinder_035
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(7.57701e-08, 3.28767e-07, 1.78814e-07)
            }
        }

        KeyframeGroup {
            target: cylinder_035
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.707107, -0.707107, -4.03206e-09, -5.43509e-09)
            }
        }


        KeyframeGroup {
            target: cube
            property: "position"

            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.32942, 0.187929, -1.39698e-09)
            }
            Keyframe {
                frame: 3300
                value: Qt.vector3d(-1.32942, 0.187929, -1.39698e-09)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-1.32942, 0.187929, 9.14342e-09)
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(-1.32942, 0.187929, 9.14342e-09)
            }
            Keyframe {
                frame: 3533.33
                value: Qt.vector3d(-1.32867, 0.190861, -1.38136e-05)
            }
            Keyframe {
                frame: 3566.67
                value: Qt.vector3d(-1.32644, 0.199402, -5.50107e-05)
            }
            Keyframe {
                frame: 3600
                value: Qt.vector3d(-1.32267, 0.213138, -0.000123062)
            }
            Keyframe {
                frame: 3633.33
                value: Qt.vector3d(-1.31722, 0.231613, -0.000218057)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(-1.30993, 0.254333, -0.000340196)
            }
            Keyframe {
                frame: 3700
                value: Qt.vector3d(-1.3223, 0.281267, -0.00129576)
            }
            Keyframe {
                frame: 3733.33
                value: Qt.vector3d(-1.36755, 0.314468, -0.00331809)
            }
            Keyframe {
                frame: 3766.67
                value: Qt.vector3d(-1.43267, 0.356956, -0.00572873)
            }
            Keyframe {
                frame: 3800
                value: Qt.vector3d(-1.50439, 0.410096, -0.00793744)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(-1.56987, 0.471962, -0.00907956)
            }
            Keyframe {
                frame: 3866.67
                value: Qt.vector3d(-1.61991, 0.538016, -0.00804779)
            }
            Keyframe {
                frame: 3900
                value: Qt.vector3d(-1.65568, 0.605817, -0.00502836)
            }
            Keyframe {
                frame: 3933.33
                value: Qt.vector3d(-1.68064, 0.674598, -0.000746539)
            }
            Keyframe {
                frame: 3966.67
                value: Qt.vector3d(-1.69799, 0.744428, 0.00387281)
            }
            Keyframe {
                frame: 4000
                value: Qt.vector3d(-1.71061, 0.816016, 0.00767111)
            }
            Keyframe {
                frame: 4033.33
                value: Qt.vector3d(-1.72043, 0.890187, 0.00961668)
            }
            Keyframe {
                frame: 4066.67
                value: Qt.vector3d(-1.72704, 0.966359, 0.010111)
            }
            Keyframe {
                frame: 4100
                value: Qt.vector3d(-1.72968, 1.04345, 0.00998183)
            }
            Keyframe {
                frame: 4133.33
                value: Qt.vector3d(-1.72787, 1.12029, 0.0101268)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(-1.72142, 1.19572, 0.0115384)
            }
            Keyframe {
                frame: 4200
                value: Qt.vector3d(-1.71059, 1.2688, 0.0149898)
            }
            Keyframe {
                frame: 4233.33
                value: Qt.vector3d(-1.6962, 1.33941, 0.0199779)
            }
            Keyframe {
                frame: 4266.67
                value: Qt.vector3d(-1.67915, 1.40772, 0.0256411)
            }
            Keyframe {
                frame: 4300
                value: Qt.vector3d(-1.66023, 1.47404, 0.0310726)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.vector3d(-1.64015, 1.5387, 0.035318)
            }
            Keyframe {
                frame: 4366.67
                value: Qt.vector3d(-1.61943, 1.60186, 0.0375235)
            }
            Keyframe {
                frame: 4400
                value: Qt.vector3d(-1.59827, 1.66275, 0.0375239)
            }
            Keyframe {
                frame: 4433.33
                value: Qt.vector3d(-1.57696, 1.72044, 0.0355844)
            }
            Keyframe {
                frame: 4466.67
                value: Qt.vector3d(-1.55598, 1.774, 0.0322639)
            }
            Keyframe {
                frame: 4500
                value: Qt.vector3d(-1.53599, 1.82266, 0.028385)
            }
            Keyframe {
                frame: 4533.33
                value: Qt.vector3d(-1.51776, 1.86563, 0.0247726)
            }
            Keyframe {
                frame: 4566.67
                value: Qt.vector3d(-1.5021, 1.90157, 0.0215985)
            }
            Keyframe {
                frame: 4600
                value: Qt.vector3d(-1.48991, 1.92908, 0.0190673)
            }
            Keyframe {
                frame: 4633.33
                value: Qt.vector3d(-1.48206, 1.94676, 0.0174708)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.vector3d(-1.47932, 1.95305, 0.0169638)
            }
            Keyframe {
                frame: 4700
                value: Qt.vector3d(-1.47934, 1.95358, 0.0169583)
            }
            Keyframe {
                frame: 4733.33
                value: Qt.vector3d(-1.47938, 1.95509, 0.0169773)
            }
            Keyframe {
                frame: 4766.67
                value: Qt.vector3d(-1.47945, 1.95748, 0.0171116)
            }
            Keyframe {
                frame: 4800
                value: Qt.vector3d(-1.47954, 1.96062, 0.0174844)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.vector3d(-1.47962, 1.96437, 0.0182286)
            }
            Keyframe {
                frame: 4866.67
                value: Qt.vector3d(-1.47971, 1.96855, 0.019467)
            }
            Keyframe {
                frame: 4900
                value: Qt.vector3d(-1.47978, 1.97299, 0.0212936)
            }
            Keyframe {
                frame: 4933.33
                value: Qt.vector3d(-1.47983, 1.9775, 0.0237591)
            }
            Keyframe {
                frame: 4966.67
                value: Qt.vector3d(-1.47985, 1.98186, 0.0268604)
            }
            Keyframe {
                frame: 5000
                value: Qt.vector3d(-1.47984, 1.98589, 0.0305383)
            }
            Keyframe {
                frame: 5033.33
                value: Qt.vector3d(-1.47981, 1.98945, 0.0346801)
            }
            Keyframe {
                frame: 5066.67
                value: Qt.vector3d(-1.47974, 1.99243, 0.0391293)
            }
            Keyframe {
                frame: 5100
                value: Qt.vector3d(-1.47965, 1.99476, 0.0436999)
            }
            Keyframe {
                frame: 5133.33
                value: Qt.vector3d(-1.47954, 1.99646, 0.0481933)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.vector3d(-1.47943, 1.99757, 0.0524131)
            }
            Keyframe {
                frame: 5200
                value: Qt.vector3d(-1.47932, 1.99821, 0.0561767)
            }
            Keyframe {
                frame: 5233.33
                value: Qt.vector3d(-1.47922, 1.99849, 0.0593235)
            }
            Keyframe {
                frame: 5266.67
                value: Qt.vector3d(-1.47913, 1.99855, 0.0617154)
            }
            Keyframe {
                frame: 5300
                value: Qt.vector3d(-1.47908, 1.99853, 0.0632306)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.vector3d(-1.47906, 1.99851, 0.06376)
            }
            Keyframe {
                frame: 5366.67
                value: Qt.vector3d(-1.47872, 1.99851, 0.0712073)
            }
            Keyframe {
                frame: 5400
                value: Qt.vector3d(-1.47752, 1.99851, 0.0928599)
            }
            Keyframe {
                frame: 5433.33
                value: Qt.vector3d(-1.47492, 1.99851, 0.127664)
            }
            Keyframe {
                frame: 5466.67
                value: Qt.vector3d(-1.47011, 1.99851, 0.174516)
            }
            Keyframe {
                frame: 5500
                value: Qt.vector3d(-1.4621, 1.99851, 0.232243)
            }
            Keyframe {
                frame: 5533.33
                value: Qt.vector3d(-1.44981, 1.99851, 0.299571)
            }
            Keyframe {
                frame: 5566.67
                value: Qt.vector3d(-1.43212, 1.99851, 0.375116)
            }
            Keyframe {
                frame: 5600
                value: Qt.vector3d(-1.40801, 1.99851, 0.457373)
            }
            Keyframe {
                frame: 5633.33
                value: Qt.vector3d(-1.37658, 1.99851, 0.544719)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.vector3d(-1.33712, 1.99851, 0.635439)
            }
            Keyframe {
                frame: 5700
                value: Qt.vector3d(-1.28921, 1.99851, 0.72775)
            }
            Keyframe {
                frame: 5733.33
                value: Qt.vector3d(-1.23269, 1.99851, 0.819859)
            }
            Keyframe {
                frame: 5766.67
                value: Qt.vector3d(-1.16772, 1.99851, 0.910008)
            }
            Keyframe {
                frame: 5800
                value: Qt.vector3d(-1.09481, 1.99851, 0.996532)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.vector3d(-1.01476, 1.99851, 1.07793)
            }
            Keyframe {
                frame: 5866.67
                value: Qt.vector3d(-0.92868, 1.99851, 1.15292)
            }
            Keyframe {
                frame: 5900
                value: Qt.vector3d(-0.837915, 1.99851, 1.22048)
            }
            Keyframe {
                frame: 5933.33
                value: Qt.vector3d(-0.744013, 1.99851, 1.27989)
            }
            Keyframe {
                frame: 5966.67
                value: Qt.vector3d(-0.648663, 1.99851, 1.33076)
            }
            Keyframe {
                frame: 6000
                value: Qt.vector3d(-0.553627, 1.99851, 1.37302)
            }
            Keyframe {
                frame: 6033.33
                value: Qt.vector3d(-0.460695, 1.99851, 1.40693)
            }
            Keyframe {
                frame: 6066.67
                value: Qt.vector3d(-0.371611, 1.99851, 1.43303)
            }
            Keyframe {
                frame: 6100
                value: Qt.vector3d(-0.288051, 1.99851, 1.45214)
            }
            Keyframe {
                frame: 6133.33
                value: Qt.vector3d(-0.211574, 1.99851, 1.46524)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.vector3d(-0.143627, 1.99851, 1.47345)
            }
            Keyframe {
                frame: 6200
                value: Qt.vector3d(-0.0855238, 1.99851, 1.47796)
            }
            Keyframe {
                frame: 6233.33
                value: Qt.vector3d(-0.0384666, 1.99851, 1.47993)
            }
            Keyframe {
                frame: 6266.67
                value: Qt.vector3d(-0.00357008, 1.99851, 1.48043)
            }
            Keyframe {
                frame: 6300
                value: Qt.vector3d(0.0181167, 1.99851, 1.48032)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.vector3d(0.0255708, 1.99851, 1.48021)
            }
            Keyframe {
                frame: 6366.67
                value: Qt.vector3d(0.0256366, 1.99907, 1.48322)
            }
            Keyframe {
                frame: 6400
                value: Qt.vector3d(0.0258746, 2.0006, 1.49184)
            }
            Keyframe {
                frame: 6433.33
                value: Qt.vector3d(0.0262564, 2.00287, 1.50544)
            }
            Keyframe {
                frame: 6466.67
                value: Qt.vector3d(0.0266751, 2.00562, 1.52339)
            }
            Keyframe {
                frame: 6500
                value: Qt.vector3d(0.0269939, 2.00862, 1.54507)
            }
            Keyframe {
                frame: 6533.33
                value: Qt.vector3d(0.0270851, 2.01163, 1.56984)
            }
            Keyframe {
                frame: 6566.67
                value: Qt.vector3d(0.0268639, 2.01447, 1.59706)
            }
            Keyframe {
                frame: 6600
                value: Qt.vector3d(0.0263168, 2.01701, 1.62608)
            }
            Keyframe {
                frame: 6633.33
                value: Qt.vector3d(0.0255218, 2.01916, 1.65624)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.vector3d(0.0246675, 2.02095, 1.68688)
            }
            Keyframe {
                frame: 6700
                value: Qt.vector3d(0.0239314, 2.02242, 1.71734)
            }
            Keyframe {
                frame: 6733.33
                value: Qt.vector3d(0.0230788, 2.02369, 1.747)
            }
            Keyframe {
                frame: 6766.67
                value: Qt.vector3d(0.0218825, 2.02477, 1.77522)
            }
            Keyframe {
                frame: 6800
                value: Qt.vector3d(0.0202609, 2.02572, 1.80142)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.vector3d(0.0182686, 2.02651, 1.82501)
            }
            Keyframe {
                frame: 6866.67
                value: Qt.vector3d(0.0160785, 2.02717, 1.84547)
            }
            Keyframe {
                frame: 6900
                value: Qt.vector3d(0.0139455, 2.0277, 1.86226)
            }
            Keyframe {
                frame: 6933.33
                value: Qt.vector3d(0.0121577, 2.02809, 1.87489)
            }
            Keyframe {
                frame: 6966.67
                value: Qt.vector3d(0.0109797, 2.02835, 1.88284)
            }
            Keyframe {
                frame: 7000
                value: Qt.vector3d(0.0105767, 2.02845, 1.88561)
            }
        }

        KeyframeGroup {
            target: cube
            property: "rotation"

            Keyframe {
                frame: 0
                value: Qt.quaternion(1, -5.82077e-11, 5.82077e-11, -2.72848e-11)
            }
            Keyframe {
                frame: 3300
                value: Qt.quaternion(1, -5.82077e-11, 5.82077e-11, -2.72848e-11)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(1, -5.82077e-11, 5.82075e-11, -1.14596e-10)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(1, -5.82077e-11, 5.82075e-11, -1.14596e-10)
            }
            Keyframe {
                frame: 3533.33
                value: Qt.quaternion(1, 1.11651e-05, 5.83107e-06, -0.00033286)
            }
            Keyframe {
                frame: 3566.67
                value: Qt.quaternion(0.999999, 4.38355e-05, 2.26126e-05, -0.00130554)
            }
            Keyframe {
                frame: 3600
                value: Qt.quaternion(0.999996, 9.7115e-05, 4.91061e-05, -0.00287945)
            }
            Keyframe {
                frame: 3633.33
                value: Qt.quaternion(0.999987, 0.000170072, 8.35613e-05, -0.00501556)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.999971, 0.000261992, 0.000124114, -0.00767516)
            }
            Keyframe {
                frame: 3700
                value: Qt.quaternion(0.999814, 0.000690729, 0.000509865, -0.01926)
            }
            Keyframe {
                frame: 3733.33
                value: Qt.quaternion(0.998986, 0.00157606, 0.00125658, -0.0449736)
            }
            Keyframe {
                frame: 3766.67
                value: Qt.quaternion(0.996796, 0.00265958, 0.00173616, -0.0799235)
            }
            Keyframe {
                frame: 3800
                value: Qt.quaternion(0.992863, 0.00364086, 0.00149592, -0.119197)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.987435, 0.00409583, 0.000576322, -0.157974)
            }
            Keyframe {
                frame: 3866.67
                value: Qt.quaternion(0.981268, 0.00360451, -0.000473854, -0.192612)
            }
            Keyframe {
                frame: 3900
                value: Qt.quaternion(0.974711, 0.00231009, -0.00124439, -0.223456)
            }
            Keyframe {
                frame: 3933.33
                value: Qt.quaternion(0.967782, 0.000561401, -0.00156435, -0.251785)
            }
            Keyframe {
                frame: 3966.67
                value: Qt.quaternion(0.960342, -0.00123913, -0.00142916, -0.278818)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.952124, -0.00263828, -0.000998211, -0.305699)
            }
            Keyframe {
                frame: 4033.33
                value: Qt.quaternion(0.942839, -0.00327669, -0.00054542, -0.333231)
            }
            Keyframe {
                frame: 4066.67
                value: Qt.quaternion(0.932495, -0.00335516, -0.000218583, -0.361167)
            }
            Keyframe {
                frame: 4100
                value: Qt.quaternion(0.921218, -0.00323939, -7.71523e-05, -0.389034)
            }
            Keyframe {
                frame: 4133.33
                value: Qt.quaternion(0.909173, -0.00332135, -0.000120644, -0.416404)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.896557, -0.00401861, -0.000276402, -0.44291)
            }
            Keyframe {
                frame: 4200
                value: Qt.quaternion(0.88354, -0.00563133, -0.000401217, -0.468322)
            }
            Keyframe {
                frame: 4233.33
                value: Qt.quaternion(0.870148, -0.00789657, -0.000355102, -0.492727)
            }
            Keyframe {
                frame: 4266.67
                value: Qt.quaternion(0.856361, -0.0103882, -4.45047e-05, -0.516273)
            }
            Keyframe {
                frame: 4300
                value: Qt.quaternion(0.842149, -0.0126567, 0.000572722, -0.539096)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.827483, -0.0142324, 0.00148384, -0.561308)
            }
            Keyframe {
                frame: 4366.67
                value: Qt.quaternion(0.812392, -0.0147574, 0.00253903, -0.582919)
            }
            Keyframe {
                frame: 4400
                value: Qt.quaternion(0.797136, -0.0144102, 0.00329575, -0.603619)
            }
            Keyframe {
                frame: 4433.33
                value: Qt.quaternion(0.782056, -0.0135788, 0.00338895, -0.62305)
            }
            Keyframe {
                frame: 4466.67
                value: Qt.quaternion(0.767506, -0.0127252, 0.0026198, -0.64091)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.753834, -0.012368, 0.000934608, -0.656948)
            }
            Keyframe {
                frame: 4533.33
                value: Qt.quaternion(0.741409, -0.0128956, -0.00154588, -0.670927)
            }
            Keyframe {
                frame: 4566.67
                value: Qt.quaternion(0.73076, -0.0140485, -0.00438329, -0.682476)
            }
            Keyframe {
                frame: 4600
                value: Qt.quaternion(0.722448, -0.0154108, -0.00703064, -0.691218)
            }
            Keyframe {
                frame: 4633.33
                value: Qt.quaternion(0.717041, -0.0165593, -0.00894684, -0.696777)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.71511, -0.0170481, -0.00966606, -0.698738)
            }
            Keyframe {
                frame: 4700
                value: Qt.quaternion(0.715054, -0.0129454, -0.00540027, -0.698928)
            }
            Keyframe {
                frame: 4733.33
                value: Qt.quaternion(0.714757, -0.00120102, 0.0068092, -0.699339)
            }
            Keyframe {
                frame: 4766.67
                value: Qt.quaternion(0.71387, 0.0173346, 0.0260742, -0.699578)
            }
            Keyframe {
                frame: 4800
                value: Qt.quaternion(0.711917, 0.0417918, 0.051485, -0.699126)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.708372, 0.071266, 0.0820949, -0.697417)
            }
            Keyframe {
                frame: 4866.67
                value: Qt.quaternion(0.702738, 0.104809, 0.116912, -0.693907)
            }
            Keyframe {
                frame: 4900
                value: Qt.quaternion(0.694604, 0.141428, 0.154901, -0.688134)
            }
            Keyframe {
                frame: 4933.33
                value: Qt.quaternion(0.683702, 0.180101, 0.194993, -0.679775)
            }
            Keyframe {
                frame: 4966.67
                value: Qt.quaternion(0.669937, 0.219791, 0.236112, -0.668675)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.65342, 0.259483, 0.277201, -0.654882)
            }
            Keyframe {
                frame: 5033.33
                value: Qt.quaternion(0.634467, 0.298208, 0.317256, -0.638649)
            }
            Keyframe {
                frame: 5066.67
                value: Qt.quaternion(0.6136, 0.335078, 0.355362, -0.620431)
            }
            Keyframe {
                frame: 5100
                value: Qt.quaternion(0.591524, 0.369313, 0.390714, -0.600874)
            }
            Keyframe {
                frame: 5133.33
                value: Qt.quaternion(0.569097, 0.400256, 0.422639, -0.580775)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.547291, 0.427377, 0.450596, -0.561057)
            }
            Keyframe {
                frame: 5200
                value: Qt.quaternion(0.527152, 0.450262, 0.474166, -0.542717)
            }
            Keyframe {
                frame: 5233.33
                value: Qt.quaternion(0.509755, 0.468586, 0.493025, -0.526787)
            }
            Keyframe {
                frame: 5266.67
                value: Qt.quaternion(0.496157, 0.482073, 0.506897, -0.514285)
            }
            Keyframe {
                frame: 5300
                value: Qt.quaternion(0.487356, 0.490441, 0.515499, -0.506174)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.484249, 0.493332, 0.51847, -0.503305)
            }
            Keyframe {
                frame: 5366.67
                value: Qt.quaternion(0.482942, 0.492063, 0.519688, -0.504546)
            }
            Keyframe {
                frame: 5400
                value: Qt.quaternion(0.479122, 0.488354, 0.523211, -0.508136)
            }
            Keyframe {
                frame: 5433.33
                value: Qt.quaternion(0.472922, 0.482331, 0.528822, -0.513857)
            }
            Keyframe {
                frame: 5466.67
                value: Qt.quaternion(0.46445, 0.474096, 0.536278, -0.521465)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.453804, 0.46374, 0.545316, -0.530695)
            }
            Keyframe {
                frame: 5533.33
                value: Qt.quaternion(0.441078, 0.451349, 0.55566, -0.541273)
            }
            Keyframe {
                frame: 5566.67
                value: Qt.quaternion(0.426366, 0.43701, 0.567028, -0.552915)
            }
            Keyframe {
                frame: 5600
                value: Qt.quaternion(0.409771, 0.42082, 0.579133, -0.565334)
            }
            Keyframe {
                frame: 5633.33
                value: Qt.quaternion(0.391413, 0.402888, 0.591696, -0.57825)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.371425, 0.383343, 0.604443, -0.591388)
            }
            Keyframe {
                frame: 5700
                value: Qt.quaternion(0.349963, 0.362333, 0.617117, -0.604489)
            }
            Keyframe {
                frame: 5733.33
                value: Qt.quaternion(0.327206, 0.340028, 0.629479, -0.617311)
            }
            Keyframe {
                frame: 5766.67
                value: Qt.quaternion(0.303352, 0.316622, 0.641316, -0.629637)
            }
            Keyframe {
                frame: 5800
                value: Qt.quaternion(0.278622, 0.292329, 0.65244, -0.641277)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.253258, 0.267385, 0.662698, -0.652072)
            }
            Keyframe {
                frame: 5866.67
                value: Qt.quaternion(0.227518, 0.242044, 0.67197, -0.661897)
            }
            Keyframe {
                frame: 5900
                value: Qt.quaternion(0.201672, 0.216573, 0.680174, -0.670663)
            }
            Keyframe {
                frame: 5933.33
                value: Qt.quaternion(0.176004, 0.191251, 0.687263, -0.678318)
            }
            Keyframe {
                frame: 5966.67
                value: Qt.quaternion(0.150802, 0.166366, 0.693229, -0.684846)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.126358, 0.142206, 0.698098, -0.690268)
            }
            Keyframe {
                frame: 6033.33
                value: Qt.quaternion(0.102963, 0.119064, 0.701931, -0.694634)
            }
            Keyframe {
                frame: 6066.67
                value: Qt.quaternion(0.0809055, 0.0972272, 0.704814, -0.698025)
            }
            Keyframe {
                frame: 6100
                value: Qt.quaternion(0.0604673, 0.0769786, 0.70686, -0.700547)
            }
            Keyframe {
                frame: 6133.33
                value: Qt.quaternion(0.0419233, 0.0585943, 0.708202, -0.702324)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.0255417, 0.0423441, 0.708982, -0.703491)
            }
            Keyframe {
                frame: 6200
                value: Qt.quaternion(0.011582, 0.0284892, 0.709347, -0.704188)
            }
            Keyframe {
                frame: 6233.33
                value: Qt.quaternion(0.000296869, 0.0172841, 0.709442, -0.704552)
            }
            Keyframe {
                frame: 6266.67
                value: Qt.quaternion(0.00806545, -0.00897823, -0.709396, 0.704707)
            }
            Keyframe {
                frame: 6300
                value: Qt.quaternion(0.0132613, -0.00381632, -0.709318, 0.704754)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.quaternion(0.0150472, -0.0020419, -0.709282, 0.704761)
            }
            Keyframe {
                frame: 6366.67
                value: Qt.quaternion(0.0151499, -0.00207188, -0.709091, 0.704951)
            }
            Keyframe {
                frame: 6400
                value: Qt.quaternion(0.0154472, -0.0021335, -0.708549, 0.705489)
            }
            Keyframe {
                frame: 6433.33
                value: Qt.quaternion(0.0158891, -0.00220053, -0.7077, 0.706331)
            }
            Keyframe {
                frame: 6466.67
                value: Qt.quaternion(0.0163977, -0.00226146, -0.70658, 0.707439)
            }
            Keyframe {
                frame: 6500
                value: Qt.quaternion(0.0168863, -0.00231259, -0.70522, 0.708784)
            }
            Keyframe {
                frame: 6533.33
                value: Qt.quaternion(0.0172754, -0.00235139, -0.703646, 0.710337)
            }
            Keyframe {
                frame: 6566.67
                value: Qt.quaternion(0.0175044, -0.00237041, -0.70188, 0.712077)
            }
            Keyframe {
                frame: 6600
                value: Qt.quaternion(0.0175422, -0.0023529, -0.69994, 0.713982)
            }
            Keyframe {
                frame: 6633.33
                value: Qt.quaternion(0.0173937, -0.00226653, -0.69784, 0.716039)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.quaternion(0.0171049, -0.00205985, -0.695588, 0.718234)
            }
            Keyframe {
                frame: 6700
                value: Qt.quaternion(0.0167287, -0.00169515, -0.693189, 0.720559)
            }
            Keyframe {
                frame: 6733.33
                value: Qt.quaternion(0.0162152, -0.00125753, -0.690666, 0.722991)
            }
            Keyframe {
                frame: 6766.67
                value: Qt.quaternion(0.0155239, -0.000838995, -0.688071, 0.725477)
            }
            Keyframe {
                frame: 6800
                value: Qt.quaternion(0.0146601, -0.000497421, -0.685477, 0.727947)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.quaternion(0.0136708, -0.000258453, -0.682978, 0.730311)
            }
            Keyframe {
                frame: 6866.67
                value: Qt.quaternion(0.0126369, -0.000118861, -0.680678, 0.732474)
            }
            Keyframe {
                frame: 6900
                value: Qt.quaternion(0.0116626, -5.46164e-05, -0.678691, 0.734331)
            }
            Keyframe {
                frame: 6933.33
                value: Qt.quaternion(0.0108601, -3.1589e-05, -0.677133, 0.73578)
            }
            Keyframe {
                frame: 6966.67
                value: Qt.quaternion(0.0103315, -1.98746e-05, -0.676119, 0.73672)
            }
            Keyframe {
                frame: 7000
                value: Qt.quaternion(0.0101477, -1.15993e-05, -0.675759, 0.737053)
            }
        }


        KeyframeGroup {
            target: cylinder_040
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-0.000628306, -1.76718e-07, -1.17347e-07)
            }
        }

        KeyframeGroup {
            target: cylinder_040
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            }
        }


        KeyframeGroup {
            target: cube_008
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(7.81121e-08, 3.08348e-07, 0.414304)
            }
        }

        KeyframeGroup {
            target: cube_008
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.707107, -0.707107, 4.94933e-08, 1.17221e-07)
            }
        }


        KeyframeGroup {
            target: empty_044
            property: "position"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, -0.00117326, -0.237438)
            }
        }

        KeyframeGroup {
            target: empty_044
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.707107, -0.707107, -8.83257e-08, 7.88586e-08)
            }
            Keyframe {
                frame: 66.6667
                value: Qt.quaternion(0.707103, -0.707104, 0.00215016, 0.00215033)
            }
            Keyframe {
                frame: 100
                value: Qt.quaternion(0.707058, -0.707058, 0.00828798, 0.00828816)
            }
            Keyframe {
                frame: 133.333
                value: Qt.quaternion(0.706879, -0.706879, 0.0179429, 0.017943)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.706443, -0.706443, 0.0306413, 0.0306414)
            }
            Keyframe {
                frame: 200
                value: Qt.quaternion(0.705615, -0.705615, 0.045905, 0.0459051)
            }
            Keyframe {
                frame: 233.333
                value: Qt.quaternion(0.704272, -0.704272, 0.0632501, 0.0632503)
            }
            Keyframe {
                frame: 266.667
                value: Qt.quaternion(0.702314, -0.702314, 0.0821881, 0.0821883)
            }
            Keyframe {
                frame: 300
                value: Qt.quaternion(0.699678, -0.699678, 0.102227, 0.102227)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.696349, -0.696349, 0.122876, 0.122876)
            }
            Keyframe {
                frame: 366.667
                value: Qt.quaternion(0.692362, -0.692362, 0.143647, 0.143647)
            }
            Keyframe {
                frame: 400
                value: Qt.quaternion(0.687811, -0.687811, 0.164061, 0.164061)
            }
            Keyframe {
                frame: 433.333
                value: Qt.quaternion(0.682841, -0.682841, 0.183652, 0.183652)
            }
            Keyframe {
                frame: 466.667
                value: Qt.quaternion(0.677649, -0.677649, 0.20197, 0.20197)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.672475, -0.672475, 0.21858, 0.21858)
            }
            Keyframe {
                frame: 533.333
                value: Qt.quaternion(0.667593, -0.667593, 0.233065, 0.233065)
            }
            Keyframe {
                frame: 566.667
                value: Qt.quaternion(0.663298, -0.663298, 0.245023, 0.245023)
            }
            Keyframe {
                frame: 600
                value: Qt.quaternion(0.65989, -0.65989, 0.254058, 0.254058)
            }
            Keyframe {
                frame: 633.333
                value: Qt.quaternion(0.657659, -0.65766, 0.259777, 0.259777)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.656866, -0.656867, 0.261775, 0.261775)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.656866, -0.656867, 0.261775, 0.261775)
            }
            Keyframe {
                frame: 1533.33
                value: Qt.quaternion(0.65798, -0.65798, 0.258963, 0.258963)
            }
            Keyframe {
                frame: 1566.67
                value: Qt.quaternion(0.661132, -0.661132, 0.250809, 0.250809)
            }
            Keyframe {
                frame: 1600
                value: Qt.quaternion(0.665955, -0.665955, 0.237705, 0.237706)
            }
            Keyframe {
                frame: 1633.33
                value: Qt.quaternion(0.672003, -0.672004, 0.220026, 0.220026)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.678779, -0.678779, 0.198139, 0.198139)
            }
            Keyframe {
                frame: 1700
                value: Qt.quaternion(0.685761, -0.685761, 0.17243, 0.17243)
            }
            Keyframe {
                frame: 1733.33
                value: Qt.quaternion(0.692431, -0.692431, 0.143314, 0.143314)
            }
            Keyframe {
                frame: 1766.67
                value: Qt.quaternion(0.698302, -0.698302, 0.111242, 0.111242)
            }
            Keyframe {
                frame: 1800
                value: Qt.quaternion(0.702933, -0.702934, 0.0767093, 0.0767095)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.70596, -0.70596, 0.0402534, 0.0402536)
            }
            Keyframe {
                frame: 1866.67
                value: Qt.quaternion(0.707102, -0.707103, 0.00244694, 0.00244712)
            }
            Keyframe {
                frame: 1900
                value: Qt.quaternion(0.706184, -0.706184, -0.0361114, -0.0361113)
            }
            Keyframe {
                frame: 1933.33
                value: Qt.quaternion(0.703138, -0.703138, -0.0748096, -0.0748094)
            }
            Keyframe {
                frame: 1966.67
                value: Qt.quaternion(0.698013, -0.698013, -0.113037, -0.113037)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.690971, -0.690971, -0.150199, -0.150199)
            }
            Keyframe {
                frame: 2033.33
                value: Qt.quaternion(0.682278, -0.682278, -0.185733, -0.185733)
            }
            Keyframe {
                frame: 2066.67
                value: Qt.quaternion(0.672301, -0.672301, -0.219115, -0.219115)
            }
            Keyframe {
                frame: 2100
                value: Qt.quaternion(0.661485, -0.661485, -0.249874, -0.249874)
            }
            Keyframe {
                frame: 2133.33
                value: Qt.quaternion(0.650342, -0.650342, -0.277589, -0.277588)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.639424, -0.639424, -0.301888, -0.301888)
            }
            Keyframe {
                frame: 2200
                value: Qt.quaternion(0.629308, -0.629308, -0.322446, -0.322446)
            }
            Keyframe {
                frame: 2233.33
                value: Qt.quaternion(0.620569, -0.620568, -0.338961, -0.338961)
            }
            Keyframe {
                frame: 2266.67
                value: Qt.quaternion(0.613755, -0.613755, -0.351149, -0.351148)
            }
            Keyframe {
                frame: 2300
                value: Qt.quaternion(0.609366, -0.609366, -0.35871, -0.35871)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.607826, -0.607826, -0.361313, -0.361313)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.607826, -0.607826, -0.361313, -0.361313)
            }
            Keyframe {
                frame: 3533.33
                value: Qt.quaternion(0.608464, -0.608464, -0.360238, -0.360238)
            }
            Keyframe {
                frame: 3566.67
                value: Qt.quaternion(0.610316, -0.610316, -0.357091, -0.357091)
            }
            Keyframe {
                frame: 3600
                value: Qt.quaternion(0.613279, -0.613279, -0.351979, -0.351979)
            }
            Keyframe {
                frame: 3633.33
                value: Qt.quaternion(0.617231, -0.617231, -0.345001, -0.345)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.622041, -0.622042, -0.336251, -0.33625)
            }
            Keyframe {
                frame: 3700
                value: Qt.quaternion(0.627568, -0.627568, -0.325819, -0.325819)
            }
            Keyframe {
                frame: 3733.33
                value: Qt.quaternion(0.633665, -0.633665, -0.313798, -0.313797)
            }
            Keyframe {
                frame: 3766.67
                value: Qt.quaternion(0.640182, -0.640182, -0.300278, -0.300278)
            }
            Keyframe {
                frame: 3800
                value: Qt.quaternion(0.64697, -0.64697, -0.285359, -0.285359)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.653882, -0.653883, -0.269143, -0.269142)
            }
            Keyframe {
                frame: 3866.67
                value: Qt.quaternion(0.660778, -0.660778, -0.251739, -0.251738)
            }
            Keyframe {
                frame: 3900
                value: Qt.quaternion(0.667523, -0.667524, -0.233265, -0.233265)
            }
            Keyframe {
                frame: 3933.33
                value: Qt.quaternion(0.673995, -0.673995, -0.213848, -0.213848)
            }
            Keyframe {
                frame: 3966.67
                value: Qt.quaternion(0.680081, -0.680081, -0.193622, -0.193621)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.685686, -0.685686, -0.172728, -0.172728)
            }
            Keyframe {
                frame: 4033.33
                value: Qt.quaternion(0.690726, -0.690726, -0.151318, -0.151318)
            }
            Keyframe {
                frame: 4066.67
                value: Qt.quaternion(0.695139, -0.695139, -0.129546, -0.129546)
            }
            Keyframe {
                frame: 4100
                value: Qt.quaternion(0.698876, -0.698876, -0.107575, -0.107575)
            }
            Keyframe {
                frame: 4133.33
                value: Qt.quaternion(0.70191, -0.70191, -0.0855693, -0.0855691)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.704232, -0.704232, -0.0636965, -0.0636963)
            }
            Keyframe {
                frame: 4200
                value: Qt.quaternion(0.705851, -0.705851, -0.0421254, -0.0421252)
            }
            Keyframe {
                frame: 4233.33
                value: Qt.quaternion(0.706794, -0.706794, -0.0210241, -0.021024)
            }
            Keyframe {
                frame: 4266.67
                value: Qt.quaternion(0.707107, -0.707107, -0.000559356, -0.000559189)
            }
            Keyframe {
                frame: 4300
                value: Qt.quaternion(0.706849, -0.706849, 0.0191054, 0.0191056)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.706095, -0.706095, 0.0378105, 0.0378106)
            }
            Keyframe {
                frame: 4366.67
                value: Qt.quaternion(0.704933, -0.704933, 0.0554006, 0.0554007)
            }
            Keyframe {
                frame: 4400
                value: Qt.quaternion(0.70346, -0.70346, 0.0717251, 0.0717253)
            }
            Keyframe {
                frame: 4433.33
                value: Qt.quaternion(0.701779, -0.701779, 0.0866386, 0.0866387)
            }
            Keyframe {
                frame: 4466.67
                value: Qt.quaternion(0.7, -0.7, 0.0999999, 0.1)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.698233, -0.698233, 0.111672, 0.111672)
            }
            Keyframe {
                frame: 4533.33
                value: Qt.quaternion(0.696586, -0.696587, 0.12152, 0.121521)
            }
            Keyframe {
                frame: 4566.67
                value: Qt.quaternion(0.695163, -0.695164, 0.129413, 0.129413)
            }
            Keyframe {
                frame: 4600
                value: Qt.quaternion(0.694058, -0.694058, 0.135217, 0.135217)
            }
            Keyframe {
                frame: 4633.33
                value: Qt.quaternion(0.69335, -0.69335, 0.1388, 0.1388)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5366.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5400
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5433.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5466.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5533.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5566.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5600
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5633.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5700
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5733.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5766.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5800
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5866.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5900
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5933.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 5966.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6033.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6066.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6100
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6133.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6200
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6233.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6266.67
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6300
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.quaternion(0.693104, -0.693104, 0.140025, 0.140025)
            }
            Keyframe {
                frame: 6366.67
                value: Qt.quaternion(0.693295, -0.693295, 0.139076, 0.139076)
            }
            Keyframe {
                frame: 6400
                value: Qt.quaternion(0.693834, -0.693834, 0.13636, 0.13636)
            }
            Keyframe {
                frame: 6433.33
                value: Qt.quaternion(0.694664, -0.694664, 0.132069, 0.132069)
            }
            Keyframe {
                frame: 6466.67
                value: Qt.quaternion(0.695719, -0.695719, 0.126394, 0.126394)
            }
            Keyframe {
                frame: 6500
                value: Qt.quaternion(0.696931, -0.696931, 0.119527, 0.119527)
            }
            Keyframe {
                frame: 6533.33
                value: Qt.quaternion(0.698235, -0.698235, 0.11166, 0.11166)
            }
            Keyframe {
                frame: 6566.67
                value: Qt.quaternion(0.699567, -0.699567, 0.102986, 0.102987)
            }
            Keyframe {
                frame: 6600
                value: Qt.quaternion(0.700871, -0.700871, 0.0937019, 0.0937021)
            }
            Keyframe {
                frame: 6633.33
                value: Qt.quaternion(0.702099, -0.702099, 0.0840035, 0.0840036)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.quaternion(0.703214, -0.703215, 0.0740899, 0.07409)
            }
            Keyframe {
                frame: 6700
                value: Qt.quaternion(0.70419, -0.70419, 0.0641616, 0.0641617)
            }
            Keyframe {
                frame: 6733.33
                value: Qt.quaternion(0.705009, -0.70501, 0.0544201, 0.0544202)
            }
            Keyframe {
                frame: 6766.67
                value: Qt.quaternion(0.705669, -0.705669, 0.0450677, 0.0450679)
            }
            Keyframe {
                frame: 6800
                value: Qt.quaternion(0.706174, -0.706174, 0.0363073, 0.0363074)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.quaternion(0.706538, -0.706539, 0.0283413, 0.0283415)
            }
            Keyframe {
                frame: 6866.67
                value: Qt.quaternion(0.706784, -0.706784, 0.0213723, 0.0213725)
            }
            Keyframe {
                frame: 6900
                value: Qt.quaternion(0.706935, -0.706935, 0.0156021, 0.0156023)
            }
            Keyframe {
                frame: 6933.33
                value: Qt.quaternion(0.707017, -0.707018, 0.0112321, 0.0112323)
            }
            Keyframe {
                frame: 6966.67
                value: Qt.quaternion(0.707056, -0.707056, 0.00846306, 0.00846321)
            }
            Keyframe {
                frame: 7000
                value: Qt.quaternion(0.707067, -0.707067, 0.00749555, 0.00749571)
            }
        }


        KeyframeGroup {
            target: cube_022
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(4.18158e-06, 3.68672e-06, 0.35585)
            }
        }

        KeyframeGroup {
            target: cube_022
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.672395, -0.672298, -0.219125, 0.218827)
            }
        }


        KeyframeGroup {
            target: empty_046
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-1.38464e-07, -3.90566e-07, -0.39859)
            }
        }

        KeyframeGroup {
            target: empty_046
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.495601, -0.498422, -0.503919, -0.502016)
            }
            Keyframe {
                frame: 66.6667
                value: Qt.quaternion(0.496137, -0.498975, -0.503386, -0.501473)
            }
            Keyframe {
                frame: 100
                value: Qt.quaternion(0.497664, -0.500548, -0.501862, -0.499917)
            }
            Keyframe {
                frame: 133.333
                value: Qt.quaternion(0.500057, -0.503013, -0.499454, -0.49746)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.503187, -0.506239, -0.496268, -0.494209)
            }
            Keyframe {
                frame: 200
                value: Qt.quaternion(0.506926, -0.510093, -0.492408, -0.490272)
            }
            Keyframe {
                frame: 233.333
                value: Qt.quaternion(0.511144, -0.514442, -0.487979, -0.485755)
            }
            Keyframe {
                frame: 266.667
                value: Qt.quaternion(0.515716, -0.519156, -0.483089, -0.480769)
            }
            Keyframe {
                frame: 300
                value: Qt.quaternion(0.520517, -0.524109, -0.47785, -0.475428)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.525429, -0.529177, -0.472375, -0.469849)
            }
            Keyframe {
                frame: 366.667
                value: Qt.quaternion(0.530337, -0.534241, -0.466787, -0.464154)
            }
            Keyframe {
                frame: 400
                value: Qt.quaternion(0.535131, -0.539191, -0.461208, -0.458471)
            }
            Keyframe {
                frame: 433.333
                value: Qt.quaternion(0.539708, -0.543916, -0.455768, -0.45293)
            }
            Keyframe {
                frame: 466.667
                value: Qt.quaternion(0.543968, -0.548316, -0.450601, -0.447668)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.547816, -0.552293, -0.445843, -0.442824)
            }
            Keyframe {
                frame: 533.333
                value: Qt.quaternion(0.551163, -0.555752, -0.441635, -0.43854)
            }
            Keyframe {
                frame: 566.667
                value: Qt.quaternion(0.553921, -0.558602, -0.438116, -0.434959)
            }
            Keyframe {
                frame: 600
                value: Qt.quaternion(0.556001, -0.560753, -0.435431, -0.432226)
            }
            Keyframe {
                frame: 633.333
                value: Qt.quaternion(0.557316, -0.562113, -0.433718, -0.430483)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.557776, -0.562588, -0.433117, -0.429872)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.557776, -0.562588, -0.433117, -0.429872)
            }
            Keyframe {
                frame: 1533.33
                value: Qt.quaternion(0.559447, -0.564317, -0.43092, -0.427637)
            }
            Keyframe {
                frame: 1566.67
                value: Qt.quaternion(0.564228, -0.569262, -0.424534, -0.421139)
            }
            Keyframe {
                frame: 1600
                value: Qt.quaternion(0.571711, -0.577007, -0.414219, -0.410648)
            }
            Keyframe {
                frame: 1633.33
                value: Qt.quaternion(0.581428, -0.587071, -0.4002, -0.396394)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.59287, -0.598934, -0.382686, -0.378597)
            }
            Keyframe {
                frame: 1700
                value: Qt.quaternion(0.605506, -0.612052, -0.361891, -0.357477)
            }
            Keyframe {
                frame: 1733.33
                value: Qt.quaternion(0.618802, -0.62588, -0.338055, -0.333282)
            }
            Keyframe {
                frame: 1766.67
                value: Qt.quaternion(0.63224, -0.639887, -0.311451, -0.306295)
            }
            Keyframe {
                frame: 1800
                value: Qt.quaternion(0.645332, -0.653571, -0.282399, -0.276843)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.657641, -0.666483, -0.251267, -0.245305)
            }
            Keyframe {
                frame: 1866.67
                value: Qt.quaternion(0.668789, -0.678233, -0.218476, -0.212108)
            }
            Keyframe {
                frame: 1900
                value: Qt.quaternion(0.678476, -0.688511, -0.184491, -0.177724)
            }
            Keyframe {
                frame: 1933.33
                value: Qt.quaternion(0.686488, -0.697092, -0.149813, -0.142663)
            }
            Keyframe {
                frame: 1966.67
                value: Qt.quaternion(0.692702, -0.703843, -0.114977, -0.107464)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.697089, -0.708731, -0.08053, -0.0726799)
            }
            Keyframe {
                frame: 2033.33
                value: Qt.quaternion(0.699714, -0.711813, -0.0470271, -0.0388691)
            }
            Keyframe {
                frame: 2066.67
                value: Qt.quaternion(0.70073, -0.713238, -0.0150171, -0.00658294)
            }
            Keyframe {
                frame: 2100
                value: Qt.quaternion(0.700367, -0.713234, 0.0149673, 0.0236439)
            }
            Keyframe {
                frame: 2133.33
                value: Qt.quaternion(0.69892, -0.712096, 0.0424145, 0.0512994)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.696732, -0.710167, 0.0668391, 0.0758986)
            }
            Keyframe {
                frame: 2200
                value: Qt.quaternion(0.694176, -0.70782, 0.0877816, 0.0969821)
            }
            Keyframe {
                frame: 2233.33
                value: Qt.quaternion(0.691631, -0.705437, 0.104804, 0.114114)
            }
            Keyframe {
                frame: 2266.67
                value: Qt.quaternion(0.68946, -0.703382, 0.117483, 0.126871)
            }
            Keyframe {
                frame: 2300
                value: Qt.quaternion(0.687985, -0.701976, 0.125402, 0.134837)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.687453, -0.701468, 0.128138, 0.137589)
            }
            Keyframe {
                frame: 2366.67
                value: Qt.quaternion(0.687641, -0.701648, 0.127178, 0.136624)
            }
            Keyframe {
                frame: 2400
                value: Qt.quaternion(0.688171, -0.702154, 0.12443, 0.133859)
            }
            Keyframe {
                frame: 2433.33
                value: Qt.quaternion(0.688985, -0.70293, 0.120088, 0.129491)
            }
            Keyframe {
                frame: 2466.67
                value: Qt.quaternion(0.690019, -0.703913, 0.114346, 0.123715)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.691206, -0.705036, 0.1074, 0.116726)
            }
            Keyframe {
                frame: 2533.33
                value: Qt.quaternion(0.692478, -0.706234, 0.0994433, 0.108719)
            }
            Keyframe {
                frame: 2566.67
                value: Qt.quaternion(0.693773, -0.707445, 0.0906727, 0.0998922)
            }
            Keyframe {
                frame: 2600
                value: Qt.quaternion(0.695036, -0.708616, 0.0812861, 0.0904436)
            }
            Keyframe {
                frame: 2633.33
                value: Qt.quaternion(0.696219, -0.709702, 0.0714829, 0.0805743)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.697286, -0.710666, 0.0614646, 0.0704865)
            }
            Keyframe {
                frame: 2700
                value: Qt.quaternion(0.698211, -0.711484, 0.0514338, 0.0603843)
            }
            Keyframe {
                frame: 2733.33
                value: Qt.quaternion(0.698979, -0.712146, 0.0415941, 0.0504729)
            }
            Keyframe {
                frame: 2766.67
                value: Qt.quaternion(0.699586, -0.712649, 0.0321496, 0.0409581)
            }
            Keyframe {
                frame: 2800
                value: Qt.quaternion(0.70004, -0.713003, 0.0233048, 0.0320461)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.700357, -0.713228, 0.015264, 0.0239428)
            }
            Keyframe {
                frame: 2866.67
                value: Qt.quaternion(0.700559, -0.713348, 0.00823073, 0.0168541)
            }
            Keyframe {
                frame: 2900
                value: Qt.quaternion(0.700674, -0.713393, 0.00240834, 0.0109853)
            }
            Keyframe {
                frame: 2933.33
                value: Qt.quaternion(0.700729, -0.713395, -0.0020007, 0.00654055)
            }
            Keyframe {
                frame: 2966.67
                value: Qt.quaternion(0.700749, -0.713382, -0.00479415, 0.00372434)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.700754, -0.713375, -0.00577014, 0.00274036)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.700754, -0.713375, -0.00577014, 0.00274036)
            }
            Keyframe {
                frame: 3533.33
                value: Qt.quaternion(0.700757, -0.713366, -0.0067803, 0.00172195)
            }
            Keyframe {
                frame: 3566.67
                value: Qt.quaternion(0.700759, -0.713331, -0.00973226, -0.00125431)
            }
            Keyframe {
                frame: 3600
                value: Qt.quaternion(0.700735, -0.713249, -0.014508, -0.00606963)
            }
            Keyframe {
                frame: 3633.33
                value: Qt.quaternion(0.700651, -0.713084, -0.0209889, -0.012605)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.700464, -0.712795, -0.0290557, -0.0207404)
            }
            Keyframe {
                frame: 3700
                value: Qt.quaternion(0.700123, -0.712332, -0.0385876, -0.030355)
            }
            Keyframe {
                frame: 3733.33
                value: Qt.quaternion(0.699578, -0.711644, -0.0494627, -0.0413264)
            }
            Keyframe {
                frame: 3766.67
                value: Qt.quaternion(0.698773, -0.710677, -0.0615572, -0.0535302)
            }
            Keyframe {
                frame: 3800
                value: Qt.quaternion(0.697657, -0.70938, -0.0747452, -0.0668405)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.696182, -0.707705, -0.0888993, -0.0811291)
            }
            Keyframe {
                frame: 3866.67
                value: Qt.quaternion(0.694303, -0.705608, -0.10389, -0.0962664)
            }
            Keyframe {
                frame: 3900
                value: Qt.quaternion(0.691983, -0.703055, -0.119587, -0.112121)
            }
            Keyframe {
                frame: 3933.33
                value: Qt.quaternion(0.689195, -0.700018, -0.135858, -0.12856)
            }
            Keyframe {
                frame: 3966.67
                value: Qt.quaternion(0.685919, -0.696478, -0.152571, -0.145451)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.682145, -0.692428, -0.169594, -0.16266)
            }
            Keyframe {
                frame: 4033.33
                value: Qt.quaternion(0.677877, -0.687873, -0.186797, -0.180056)
            }
            Keyframe {
                frame: 4066.67
                value: Qt.quaternion(0.673128, -0.682827, -0.204049, -0.197509)
            }
            Keyframe {
                frame: 4100
                value: Qt.quaternion(0.667924, -0.677319, -0.221225, -0.214889)
            }
            Keyframe {
                frame: 4133.33
                value: Qt.quaternion(0.662301, -0.671387, -0.2382, -0.232073)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.656309, -0.665083, -0.254856, -0.248939)
            }
            Keyframe {
                frame: 4200
                value: Qt.quaternion(0.650009, -0.65847, -0.271078, -0.265372)
            }
            Keyframe {
                frame: 4233.33
                value: Qt.quaternion(0.64347, -0.651622, -0.286756, -0.281259)
            }
            Keyframe {
                frame: 4266.67
                value: Qt.quaternion(0.636773, -0.64462, -0.301788, -0.296496)
            }
            Keyframe {
                frame: 4300
                value: Qt.quaternion(0.630006, -0.637556, -0.316074, -0.310983)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.623268, -0.630531, -0.329524, -0.324626)
            }
            Keyframe {
                frame: 4366.67
                value: Qt.quaternion(0.616658, -0.623649, -0.34205, -0.337336)
            }
            Keyframe {
                frame: 4400
                value: Qt.quaternion(0.610287, -0.617022, -0.353571, -0.34903)
            }
            Keyframe {
                frame: 4433.33
                value: Qt.quaternion(0.604263, -0.610761, -0.364011, -0.359629)
            }
            Keyframe {
                frame: 4466.67
                value: Qt.quaternion(0.5987, -0.604984, -0.373295, -0.369057)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.59371, -0.599806, -0.381352, -0.377242)
            }
            Keyframe {
                frame: 4533.33
                value: Qt.quaternion(0.589405, -0.595339, -0.388113, -0.384111)
            }
            Keyframe {
                frame: 4566.67
                value: Qt.quaternion(0.585891, -0.591696, -0.393506, -0.389591)
            }
            Keyframe {
                frame: 4600
                value: Qt.quaternion(0.58327, -0.588979, -0.397458, -0.393608)
            }
            Keyframe {
                frame: 4633.33
                value: Qt.quaternion(0.581636, -0.587286, -0.399892, -0.396082)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5366.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5400
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5433.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5466.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5533.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5566.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5600
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5633.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5700
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5733.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5766.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5800
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5866.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5900
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5933.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 5966.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6033.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6066.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6100
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6133.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6200
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6233.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6266.67
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6300
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.quaternion(0.581075, -0.586705, -0.400723, -0.396926)
            }
            Keyframe {
                frame: 6366.67
                value: Qt.quaternion(0.581229, -0.586864, -0.400496, -0.396695)
            }
            Keyframe {
                frame: 6400
                value: Qt.quaternion(0.581668, -0.587319, -0.399845, -0.396034)
            }
            Keyframe {
                frame: 6433.33
                value: Qt.quaternion(0.58236, -0.588036, -0.398816, -0.394988)
            }
            Keyframe {
                frame: 6466.67
                value: Qt.quaternion(0.583271, -0.58898, -0.397456, -0.393606)
            }
            Keyframe {
                frame: 6500
                value: Qt.quaternion(0.584367, -0.590117, -0.39581, -0.391933)
            }
            Keyframe {
                frame: 6533.33
                value: Qt.quaternion(0.585615, -0.59141, -0.393924, -0.390016)
            }
            Keyframe {
                frame: 6566.67
                value: Qt.quaternion(0.586981, -0.592826, -0.391844, -0.387902)
            }
            Keyframe {
                frame: 6600
                value: Qt.quaternion(0.588433, -0.594331, -0.389616, -0.385638)
            }
            Keyframe {
                frame: 6633.33
                value: Qt.quaternion(0.589937, -0.595891, -0.387287, -0.383271)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.quaternion(0.591462, -0.597474, -0.384904, -0.38085)
            }
            Keyframe {
                frame: 6700
                value: Qt.quaternion(0.592978, -0.599046, -0.382514, -0.378422)
            }
            Keyframe {
                frame: 6733.33
                value: Qt.quaternion(0.594454, -0.600578, -0.380166, -0.376037)
            }
            Keyframe {
                frame: 6766.67
                value: Qt.quaternion(0.595861, -0.602038, -0.377909, -0.373744)
            }
            Keyframe {
                frame: 6800
                value: Qt.quaternion(0.59717, -0.603396, -0.375792, -0.371594)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.quaternion(0.598353, -0.604624, -0.373863, -0.369635)
            }
            Keyframe {
                frame: 6866.67
                value: Qt.quaternion(0.599382, -0.605693, -0.372174, -0.367919)
            }
            Keyframe {
                frame: 6900
                value: Qt.quaternion(0.600231, -0.606573, -0.370773, -0.366496)
            }
            Keyframe {
                frame: 6933.33
                value: Qt.quaternion(0.600871, -0.607238, -0.369711, -0.365417)
            }
            Keyframe {
                frame: 6966.67
                value: Qt.quaternion(0.601275, -0.607658, -0.369038, -0.364733)
            }
            Keyframe {
                frame: 7000
                value: Qt.quaternion(0.601417, -0.607805, -0.368802, -0.364494)
            }
        }


        KeyframeGroup {
            target: cube_023
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-4.30271e-07, 9.69012e-08, 2.27243e-07)
            }
        }

        KeyframeGroup {
            target: cube_023
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(1, -4.42378e-09, -5.19212e-08, -3.12139e-08)
            }
        }


        KeyframeGroup {
            target: empty_049
            property: "position"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0.0690344, -0.00197406, -0.437096)
            }
        }

        KeyframeGroup {
            target: empty_049
            property: "rotation"

            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.707107, 0.707107, 6.2181e-08, -1.11129e-08)
            }
            Keyframe {
                frame: 700
                value: Qt.quaternion(0.707098, 0.707098, -0.0034555, 0.00345555)
            }
            Keyframe {
                frame: 733.333
                value: Qt.quaternion(0.70699, 0.70699, -0.0128342, 0.0128343)
            }
            Keyframe {
                frame: 766.667
                value: Qt.quaternion(0.706604, 0.706605, -0.0266509, 0.026651)
            }
            Keyframe {
                frame: 800
                value: Qt.quaternion(0.705773, 0.705773, -0.0434141, 0.0434142)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.704416, 0.704416, -0.0616284, 0.0616284)
            }
            Keyframe {
                frame: 866.667
                value: Qt.quaternion(0.702589, 0.702589, -0.0798015, 0.0798015)
            }
            Keyframe {
                frame: 900
                value: Qt.quaternion(0.700497, 0.700497, -0.0964544, 0.0964545)
            }
            Keyframe {
                frame: 933.333
                value: Qt.quaternion(0.698478, 0.698478, -0.110128, 0.110128)
            }
            Keyframe {
                frame: 966.667
                value: Qt.quaternion(0.696956, 0.696956, -0.119383, 0.119383)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1033.33
                value: Qt.quaternion(0.698478, 0.698478, -0.110128, 0.110128)
            }
            Keyframe {
                frame: 1066.67
                value: Qt.quaternion(0.702589, 0.702589, -0.0798014, 0.0798015)
            }
            Keyframe {
                frame: 1100
                value: Qt.quaternion(0.705773, 0.705773, -0.0434141, 0.0434142)
            }
            Keyframe {
                frame: 1133.33
                value: Qt.quaternion(0.70699, 0.70699, -0.0128342, 0.0128343)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.707107, 0.707107, 6.2181e-08, -1.11129e-08)
            }
            Keyframe {
                frame: 1200
                value: Qt.quaternion(0.707098, 0.707098, -0.0034555, 0.00345555)
            }
            Keyframe {
                frame: 1233.33
                value: Qt.quaternion(0.70699, 0.70699, -0.0128342, 0.0128343)
            }
            Keyframe {
                frame: 1266.67
                value: Qt.quaternion(0.706604, 0.706605, -0.0266509, 0.026651)
            }
            Keyframe {
                frame: 1300
                value: Qt.quaternion(0.705773, 0.705773, -0.0434141, 0.0434142)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.704416, 0.704416, -0.0616284, 0.0616284)
            }
            Keyframe {
                frame: 1366.67
                value: Qt.quaternion(0.702589, 0.702589, -0.0798015, 0.0798015)
            }
            Keyframe {
                frame: 1400
                value: Qt.quaternion(0.700497, 0.700497, -0.0964544, 0.0964545)
            }
            Keyframe {
                frame: 1433.33
                value: Qt.quaternion(0.698478, 0.698478, -0.110128, 0.110128)
            }
            Keyframe {
                frame: 1466.67
                value: Qt.quaternion(0.696956, 0.696956, -0.119383, 0.119383)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1533.33
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1566.67
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1700
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1733.33
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1766.67
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1866.67
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1933.33
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 1966.67
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.696364, 0.696364, -0.122788, 0.122788)
            }
            Keyframe {
                frame: 2033.33
                value: Qt.quaternion(0.694812, 0.694812, -0.131286, 0.131286)
            }
            Keyframe {
                frame: 2066.67
                value: Qt.quaternion(0.690077, 0.690077, -0.154251, 0.154251)
            }
            Keyframe {
                frame: 2100
                value: Qt.quaternion(0.681718, 0.681719, -0.187776, 0.187777)
            }
            Keyframe {
                frame: 2133.33
                value: Qt.quaternion(0.669382, 0.669382, -0.227876, 0.227876)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.653281, 0.653282, -0.270598, 0.270598)
            }
            Keyframe {
                frame: 2200
                value: Qt.quaternion(0.634457, 0.634458, -0.312192, 0.312192)
            }
            Keyframe {
                frame: 2233.33
                value: Qt.quaternion(0.614826, 0.614826, -0.34927, 0.34927)
            }
            Keyframe {
                frame: 2266.67
                value: Qt.quaternion(0.59703, 0.59703, -0.378887, 0.378887)
            }
            Keyframe {
                frame: 2300
                value: Qt.quaternion(0.58414, 0.58414, -0.398473, 0.398473)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2400
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2433.33
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2466.67
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2533.33
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2566.67
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2600
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2633.33
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2700
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2733.33
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2766.67
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2800
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2866.67
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2900
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2933.33
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 2966.67
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.579228, 0.579228, -0.40558, 0.40558)
            }
            Keyframe {
                frame: 3033.33
                value: Qt.quaternion(0.583652, 0.583652, -0.399186, 0.399187)
            }
            Keyframe {
                frame: 3066.67
                value: Qt.quaternion(0.595304, 0.595305, -0.381592, 0.381592)
            }
            Keyframe {
                frame: 3100
                value: Qt.quaternion(0.611507, 0.611507, -0.355049, 0.355049)
            }
            Keyframe {
                frame: 3133.33
                value: Qt.quaternion(0.629588, 0.629588, -0.321899, 0.321899)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.647223, 0.647223, -0.284785, 0.284785)
            }
            Keyframe {
                frame: 3200
                value: Qt.quaternion(0.662672, 0.662672, -0.246709, 0.246709)
            }
            Keyframe {
                frame: 3233.33
                value: Qt.quaternion(0.674897, 0.674897, -0.210983, 0.210983)
            }
            Keyframe {
                frame: 3266.67
                value: Qt.quaternion(0.683521, 0.683521, -0.181105, 0.181105)
            }
            Keyframe {
                frame: 3300
                value: Qt.quaternion(0.688621, 0.688621, -0.160627, 0.160627)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.690345, 0.690346, -0.153046, 0.153046)
            }
        }


        KeyframeGroup {
            target: cylinder_039
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(1.13941e-06, -9.7556e-08, -6.51926e-08)
            }
        }

        KeyframeGroup {
            target: cylinder_039
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            }
        }


        KeyframeGroup {
            target: grab
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(1.32987e-06, 1.58325e-08, 0.130928)
            }
        }

        KeyframeGroup {
            target: grab
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.707107, -1.32738e-09, -0.707107, -8.07746e-09)
            }
        }


        KeyframeGroup {
            target: empty_051
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(0.389575, -0.162363, -1.62506e-05)
            }
        }

        KeyframeGroup {
            target: empty_051
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 66.6667
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 100
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 133.333
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 200
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 233.333
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 266.667
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 300
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 366.667
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 400
                value: Qt.quaternion(0.588339, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 433.333
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 466.667
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 533.333
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 566.667
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 600
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 633.333
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1533.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1566.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1600
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1633.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1700
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1733.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1766.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1800
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1866.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1900
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 1933.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2033.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2066.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2100
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2133.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2200
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2233.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2266.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2300
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2366.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2466.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.588339, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2533.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2566.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2600
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2633.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2700
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2733.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2766.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2800
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2866.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2900
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2933.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 2966.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3533.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3566.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3600
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3633.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.588339, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3700
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3733.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3766.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3800
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3866.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3900
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3933.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 3966.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4033.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4066.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4100
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4133.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4200
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4233.33
                value: Qt.quaternion(0.588339, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4266.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4300
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4366.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4400
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4433.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4466.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4533.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4566.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4600
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4633.33
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
            }
            Keyframe {
                frame: 4700
                value: Qt.quaternion(0.586006, -0.590704, -0.388657, 0.395741)
            }
            Keyframe {
                frame: 4733.33
                value: Qt.quaternion(0.579215, -0.597206, -0.37859, 0.405616)
            }
            Keyframe {
                frame: 4766.67
                value: Qt.quaternion(0.568159, -0.607119, -0.362481, 0.420964)
            }
            Keyframe {
                frame: 4800
                value: Qt.quaternion(0.552936, -0.619543, -0.340811, 0.440768)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.533627, -0.633519, -0.314068, 0.463958)
            }
            Keyframe {
                frame: 4866.67
                value: Qt.quaternion(0.510357, -0.648087, -0.282787, 0.489439)
            }
            Keyframe {
                frame: 4900
                value: Qt.quaternion(0.483348, -0.662332, -0.24759, 0.516129)
            }
            Keyframe {
                frame: 4933.33
                value: Qt.quaternion(0.452953, -0.675442, -0.209198, 0.543)
            }
            Keyframe {
                frame: 4966.67
                value: Qt.quaternion(0.419673, -0.686742, -0.168435, 0.569113)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.384164, -0.69574, -0.126217, 0.59366)
            }
            Keyframe {
                frame: 5033.33
                value: Qt.quaternion(0.347224, -0.702145, -0.0835286, 0.615995)
            }
            Keyframe {
                frame: 5066.67
                value: Qt.quaternion(0.309769, -0.705884, -0.0413936, 0.635656)
            }
            Keyframe {
                frame: 5100
                value: Qt.quaternion(0.272804, -0.707096, -0.000843255, 0.652374)
            }
            Keyframe {
                frame: 5133.33
                value: Qt.quaternion(0.237392, -0.706122, 0.0371147, 0.666078)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.204614, -0.70347, 0.0715189, 0.676866)
            }
            Keyframe {
                frame: 5200
                value: Qt.quaternion(0.175549, -0.699778, 0.101468, 0.68498)
            }
            Keyframe {
                frame: 5233.33
                value: Qt.quaternion(0.151246, -0.695758, 0.12612, 0.690753)
            }
            Keyframe {
                frame: 5266.67
                value: Qt.quaternion(0.132716, -0.692136, 0.144685, 0.694551)
            }
            Keyframe {
                frame: 5300
                value: Qt.quaternion(0.120926, -0.689584, 0.156395, 0.696701)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.116798, -0.688646, 0.160476, 0.697404)
            }
        }


        KeyframeGroup {
            target: empty_050
            property: "position"

            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-0.0684058, -0.00197316, -0.437096)
            }
        }

        KeyframeGroup {
            target: empty_050
            property: "rotation"

            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.707107, 0.707107, 6.2181e-08, -1.11129e-08)
            }
            Keyframe {
                frame: 700
                value: Qt.quaternion(0.707098, 0.707098, 0.00345562, -0.00345558)
            }
            Keyframe {
                frame: 733.333
                value: Qt.quaternion(0.70699, 0.70699, 0.0128343, -0.0128343)
            }
            Keyframe {
                frame: 766.667
                value: Qt.quaternion(0.706604, 0.706605, 0.026651, -0.026651)
            }
            Keyframe {
                frame: 800
                value: Qt.quaternion(0.705773, 0.705773, 0.0434143, -0.0434142)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.704416, 0.704416, 0.0616285, -0.0616284)
            }
            Keyframe {
                frame: 866.667
                value: Qt.quaternion(0.702589, 0.702589, 0.0798016, -0.0798016)
            }
            Keyframe {
                frame: 900
                value: Qt.quaternion(0.700497, 0.700497, 0.0964545, -0.0964545)
            }
            Keyframe {
                frame: 933.333
                value: Qt.quaternion(0.698478, 0.698478, 0.110128, -0.110128)
            }
            Keyframe {
                frame: 966.667
                value: Qt.quaternion(0.696956, 0.696956, 0.119383, -0.119383)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1033.33
                value: Qt.quaternion(0.698478, 0.698478, 0.110128, -0.110128)
            }
            Keyframe {
                frame: 1066.67
                value: Qt.quaternion(0.702589, 0.702589, 0.0798016, -0.0798015)
            }
            Keyframe {
                frame: 1100
                value: Qt.quaternion(0.705773, 0.705773, 0.0434142, -0.0434142)
            }
            Keyframe {
                frame: 1133.33
                value: Qt.quaternion(0.70699, 0.70699, 0.0128343, -0.0128343)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.707107, 0.707107, 6.2181e-08, -1.11129e-08)
            }
            Keyframe {
                frame: 1200
                value: Qt.quaternion(0.707098, 0.707098, 0.00345563, -0.00345558)
            }
            Keyframe {
                frame: 1233.33
                value: Qt.quaternion(0.70699, 0.70699, 0.0128344, -0.0128343)
            }
            Keyframe {
                frame: 1266.67
                value: Qt.quaternion(0.706604, 0.706605, 0.026651, -0.026651)
            }
            Keyframe {
                frame: 1300
                value: Qt.quaternion(0.705773, 0.705773, 0.0434143, -0.0434142)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.704416, 0.704416, 0.0616285, -0.0616284)
            }
            Keyframe {
                frame: 1366.67
                value: Qt.quaternion(0.702589, 0.702589, 0.0798016, -0.0798016)
            }
            Keyframe {
                frame: 1400
                value: Qt.quaternion(0.700497, 0.700497, 0.0964545, -0.0964545)
            }
            Keyframe {
                frame: 1433.33
                value: Qt.quaternion(0.698478, 0.698478, 0.110128, -0.110128)
            }
            Keyframe {
                frame: 1466.67
                value: Qt.quaternion(0.696956, 0.696956, 0.119383, -0.119383)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1533.33
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1566.67
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1600
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1633.33
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1700
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1733.33
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1766.67
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1800
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1866.67
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1900
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1933.33
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 1966.67
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.696364, 0.696364, 0.122788, -0.122788)
            }
            Keyframe {
                frame: 2033.33
                value: Qt.quaternion(0.694812, 0.694812, 0.131286, -0.131286)
            }
            Keyframe {
                frame: 2066.67
                value: Qt.quaternion(0.690077, 0.690077, 0.154251, -0.154251)
            }
            Keyframe {
                frame: 2100
                value: Qt.quaternion(0.681718, 0.681718, 0.187777, -0.187777)
            }
            Keyframe {
                frame: 2133.33
                value: Qt.quaternion(0.669382, 0.669382, 0.227876, -0.227876)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.653281, 0.653281, 0.270598, -0.270598)
            }
            Keyframe {
                frame: 2200
                value: Qt.quaternion(0.634457, 0.634457, 0.312192, -0.312192)
            }
            Keyframe {
                frame: 2233.33
                value: Qt.quaternion(0.614826, 0.614826, 0.34927, -0.34927)
            }
            Keyframe {
                frame: 2266.67
                value: Qt.quaternion(0.59703, 0.59703, 0.378887, -0.378887)
            }
            Keyframe {
                frame: 2300
                value: Qt.quaternion(0.58414, 0.58414, 0.398473, -0.398473)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2366.67
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2400
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2433.33
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2466.67
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2533.33
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2566.67
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2600
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2633.33
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2700
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2733.33
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2933.33
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 2966.67
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            }
            Keyframe {
                frame: 3033.33
                value: Qt.quaternion(0.583652, 0.583652, 0.399186, -0.399187)
            }
            Keyframe {
                frame: 3066.67
                value: Qt.quaternion(0.595304, 0.595305, 0.381592, -0.381592)
            }
            Keyframe {
                frame: 3100
                value: Qt.quaternion(0.611507, 0.611507, 0.355049, -0.355049)
            }
            Keyframe {
                frame: 3133.33
                value: Qt.quaternion(0.629588, 0.629588, 0.321899, -0.321899)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.647223, 0.647223, 0.284785, -0.284785)
            }
            Keyframe {
                frame: 3200
                value: Qt.quaternion(0.662672, 0.662672, 0.246709, -0.246709)
            }
            Keyframe {
                frame: 3233.33
                value: Qt.quaternion(0.674897, 0.674897, 0.210983, -0.210983)
            }
            Keyframe {
                frame: 3266.67
                value: Qt.quaternion(0.683521, 0.683521, 0.181105, -0.181105)
            }
            Keyframe {
                frame: 3300
                value: Qt.quaternion(0.688621, 0.688621, 0.160627, -0.160627)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.690345, 0.690346, 0.153046, -0.153046)
            }
        }


        KeyframeGroup {
            target: empty_043
            property: "position"

            Keyframe {
                frame: 5333.33
                value: Qt.vector3d(-3.57628e-08, 0.511521, 1.43051e-07)
            }
        }

        KeyframeGroup {
            target: empty_043
            property: "rotation"

            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(5.33851e-08, 5.33851e-08, -0.707107, 0.707107)
            }
            Keyframe {
                frame: 5366.67
                value: Qt.quaternion(0.00178042, 0.00178042, -0.707105, 0.707105)
            }
            Keyframe {
                frame: 5400
                value: Qt.quaternion(0.0069594, 0.0069594, -0.707072, 0.707073)
            }
            Keyframe {
                frame: 5433.33
                value: Qt.quaternion(0.0152935, 0.0152935, -0.706941, 0.706941)
            }
            Keyframe {
                frame: 5466.67
                value: Qt.quaternion(0.0265368, 0.0265368, -0.706609, 0.706609)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.04044, 0.04044, -0.705949, 0.705949)
            }
            Keyframe {
                frame: 5533.33
                value: Qt.quaternion(0.0567475, 0.0567475, -0.704826, 0.704826)
            }
            Keyframe {
                frame: 5566.67
                value: Qt.quaternion(0.0751976, 0.0751976, -0.703097, 0.703097)
            }
            Keyframe {
                frame: 5600
                value: Qt.quaternion(0.0955209, 0.0955209, -0.700625, 0.700625)
            }
            Keyframe {
                frame: 5633.33
                value: Qt.quaternion(0.11744, 0.11744, -0.697286, 0.697286)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.140672, 0.140672, -0.692973, 0.692973)
            }
            Keyframe {
                frame: 5700
                value: Qt.quaternion(0.164927, 0.164927, -0.687604, 0.687604)
            }
            Keyframe {
                frame: 5733.33
                value: Qt.quaternion(0.189914, 0.189914, -0.681126, 0.681126)
            }
            Keyframe {
                frame: 5766.67
                value: Qt.quaternion(0.215342, 0.215342, -0.673519, 0.673519)
            }
            Keyframe {
                frame: 5800
                value: Qt.quaternion(0.240923, 0.240923, -0.664797, 0.664798)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.266378, 0.266378, -0.655014, 0.655014)
            }
            Keyframe {
                frame: 5866.67
                value: Qt.quaternion(0.291435, 0.291435, -0.644256, 0.644256)
            }
            Keyframe {
                frame: 5900
                value: Qt.quaternion(0.315843, 0.315843, -0.632648, 0.632648)
            }
            Keyframe {
                frame: 5933.33
                value: Qt.quaternion(0.339363, 0.339363, -0.620349, 0.620349)
            }
            Keyframe {
                frame: 5966.67
                value: Qt.quaternion(0.361779, 0.361779, -0.607549, 0.607549)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.382897, 0.382897, -0.594466, 0.594466)
            }
            Keyframe {
                frame: 6033.33
                value: Qt.quaternion(0.402545, 0.402545, -0.581341, 0.581341)
            }
            Keyframe {
                frame: 6066.67
                value: Qt.quaternion(0.420574, 0.420574, -0.568435, 0.568435)
            }
            Keyframe {
                frame: 6100
                value: Qt.quaternion(0.436853, 0.436853, -0.556021, 0.556021)
            }
            Keyframe {
                frame: 6133.33
                value: Qt.quaternion(0.451274, 0.451274, -0.544382, 0.544382)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.463737, 0.463737, -0.533805, 0.533805)
            }
            Keyframe {
                frame: 6200
                value: Qt.quaternion(0.474154, 0.474154, -0.524574, 0.524574)
            }
            Keyframe {
                frame: 6233.33
                value: Qt.quaternion(0.482438, 0.482438, -0.516965, 0.516965)
            }
            Keyframe {
                frame: 6266.67
                value: Qt.quaternion(0.488498, 0.488498, -0.511243, 0.511243)
            }
            Keyframe {
                frame: 6300
                value: Qt.quaternion(0.49223, 0.49223, -0.507651, 0.507651)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.quaternion(0.493506, 0.493507, -0.50641, 0.50641)
            }
        }


        KeyframeGroup {
            target: cube_006
            property: "position"

            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(2.9232e-08, 5.9524e-08, 3.50067e-08)
            }
        }

        KeyframeGroup {
            target: cube_006
            property: "rotation"

            Keyframe {
                frame: 33.3333
                value: Qt.quaternion(1, -4.33115e-08, 5.36278e-08, -5.29104e-08)
            }
        }

    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: mech_Arm__02_material
            objectName: "mech_Arm__02_material"
            baseColorMap: Texture {
                source: "/assets/maps/0.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            opacityChannel: Material.A
            metalnessMap: Texture {
                source: "/assets/maps/1.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            metalnessChannel: Material.B
            roughnessMap: Texture {
                source: "/assets/maps/1.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            roughnessChannel: Material.G
            roughness: 1
            normalMap: Texture {
                source: "/assets/maps/2.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            cullMode: Material.NoCulling
        }

        PrincipledMaterial {
            id: metal_Stainless_material
            objectName: "metal_Stainless_material"
            baseColorMap: Texture {
                source: "/assets/maps/3.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            opacityChannel: Material.A
            metalnessMap: Texture {
                source: "/assets/maps/4.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            metalnessChannel: Material.B
            roughnessMap: Texture {
                source: "/assets/maps/4.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            roughnessChannel: Material.G
            roughness: 1
            normalMap: Texture {
                source: "/assets/maps/5.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            cullMode: Material.NoCulling
        }

        PrincipledMaterial {
            id: mech_Arm__03_material
            objectName: "mech_Arm__03_material"
            baseColorMap: Texture {
                source: "/assets/maps/6.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            opacityChannel: Material.A
            metalnessMap: Texture {
                source: "/assets/maps/7.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            metalnessChannel: Material.B
            roughnessMap: Texture {
                source: "/assets/maps/7.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            roughnessChannel: Material.G
            roughness: 1
            normalMap: Texture {
                source: "/assets/maps/2.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            cullMode: Material.NoCulling
        }

        PrincipledMaterial {
            id: clamps_material
            objectName: "clamps_material"
            baseColor: "#ff464646"
            roughness: 0.443662
            cullMode: Material.NoCulling
        }

        PrincipledMaterial {
            id: chrome_Metal_material
            objectName: "chrome_Metal_material"
            baseColor: "#ffcccccc"
            cullMode: Material.NoCulling
        }

        PrincipledMaterial {
            id: material_001_material
            objectName: "material_001_material"
            baseColorMap: Texture {
                source: "/assets/maps/8.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }
            opacityChannel: Material.A
            metalness: 0
            roughness: 0.15
            cullMode: Material.NoCulling
        }
    }
}
