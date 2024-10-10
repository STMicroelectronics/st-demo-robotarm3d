import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

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

    // Resources
    property url textureData: "/assets/maps/textureData.jpg"
    property url textureData6: "/assets/maps/textureData6.png"
    property url textureData8: "/assets/maps/textureData8.png"
    property url textureData26: "/assets/maps/textureData26.png"
    property url textureData10: "/assets/maps/textureData10.png"
    property url textureData24: "/assets/maps/textureData24.png"
    property url textureData13: "/assets/maps/textureData13.png"
    property url textureData17: "/assets/maps/textureData17.png"
    property url textureData15: "/assets/maps/textureData15.png"
    property url textureData10_RG: "/assets/maps/textureData10_RG.png"
    Texture {
        id: _6_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData24
    }
    Texture {
        id: _8_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _7_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData26
    }
    Texture {
        id: _4_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData15
    }
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData6
    }
    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData8
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData10
    }
    Texture {
        id: _2_texture_RG
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData10_RG
    }
    Texture {
        id: _3_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData13
    }
    Texture {
        id: _5_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData17
    }
    PrincipledMaterial {
        id: material_001_material
        baseColorMap: _8_texture
        roughness: 0.15000000596046448
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: chrome_Metal_material
        baseColor: "#ffcccccc"
        metalness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: clamps_material
        //baseColor: "#ff161616"
        baseColor: "#ff464646"
        metalness: 1
        roughness: 0.44366195797920227
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: mech_Arm__02_material
        baseColorMap: _0_texture
        metalnessMap: _1_texture
        roughnessMap: _1_texture
        /* Use specific RGB channel for each metal, roughness and normal */
        metalness: 0.5
        roughness: 0.5
        normalMap: _2_texture_RG
        opacityChannel: Material.A
        metalnessChannel: Material.R
        roughnessChannel: Material.G
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: metal_Stainless_material
        baseColorMap: _3_texture
        metalnessMap: _4_texture
        roughnessMap: _4_texture
        metalness: 0.5
        roughness: 0.5
        normalMap: _5_texture
        opacityChannel: Material.A
        metalnessChannel: Material.R
        roughnessChannel: Material.G
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: mech_Arm__03_material
        baseColorMap: _6_texture
        metalnessMap: _7_texture
        roughnessMap: _7_texture
        metalness: 0.5
        roughness: 0.5
        normalMap: _2_texture_RG
        opacityChannel: Material.A
        metalnessChannel: Material.R
        roughnessChannel: Material.G
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: root
        Node {
            id: empty_041
            Model {
                id: cylinder_023
                rotation: Qt.quaternion(0.994554, 0, -0.104219, 0)
                source: "/assets/meshes/cylinder_023_mesh.mesh"
                materials: [
                    mech_Arm__02_material,
                    clamps_material
                    //metal_Stainless_material
                ]
            }
            Node {
                id: empty_043
                position: Qt.vector3d(0, 0.511521, 0)
                rotation: Qt.quaternion(3.09086e-08, -1.25607e-15, -0.707107, 0.707107)
                scale: Qt.vector3d(1, 1, 1)
                Model {
                    id: cylinder_035
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(1, 1, 1)
                    source: "/assets/meshes/cylinder_009_mesh.mesh"
                    materials: [
                        mech_Arm__03_material
                    ]
                }
                Node {
                    id: empty_044
                    position: Qt.vector3d(0, -0.00117326, -0.237438)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(1, 1, 1)
                    Model {
                        id: cube_006
                        source: "/assets/meshes/cube_011_mesh.mesh"
                        materials: [
                            mech_Arm__02_material
                        ]
                    }
                    Node {
                        id: empty_045
                        position: Qt.vector3d(0, 0.414304, 0)
                        rotation: Qt.quaternion(0.707074, 0.707074, 0.00683759, -0.00683763)
                        scale: Qt.vector3d(1, 1, 1)
                        Model {
                            id: cube_008
                            position: Qt.vector3d(0, 0, 0.414304)
                            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                            scale: Qt.vector3d(1, 1, 1)
                            source: "/assets/meshes/cube_012_mesh.mesh"
                            materials: [
                                mech_Arm__02_material
                            ]
                        }
                        Node {
                            id: empty_046
                            position: Qt.vector3d(0, 0, -0.39859)
                            rotation: Qt.quaternion(-0.495601, 0.498422, 0.503919, 0.502016)
                            scale: Qt.vector3d(1, 1, 1)
                            Model {
                                id: cube_021
                                rotation: Qt.quaternion(1, 0, 0, -0.000221285)
                                scale: Qt.vector3d(1, 1, 1)
                                source: "/assets/meshes/cube_013_mesh.mesh"
                                materials: [
                                    mech_Arm__03_material
                                ]
                            }
                            Node {
                                id: empty_047
                                position: Qt.vector3d(0, 0.367908, 0)
                                rotation: Qt.quaternion(0.668996, 0.668997, 0.229006, -0.229006)
                                scale: Qt.vector3d(1, 1, 1)
                                Model {
                                    id: cube_022
                                    position: Qt.vector3d(4.18158e-06, 3.68672e-06, 0.35585)
                                    rotation: Qt.quaternion(0.672395, -0.672298, -0.219124, 0.218827)
                                    scale: Qt.vector3d(1, 1, 1)
                                    source: "/assets/meshes/cube_014_mesh.mesh"
                                    materials: [
                                        mech_Arm__03_material
                                    ]
                                }
                                Node {
                                    id: empty_048
                                    position: Qt.vector3d(0, 0, -0.342267)
                                    rotation: Qt.quaternion(0.611884, -0.703233, -0.0739207, 0.354398)
                                    Model {
                                        id: cube_023
                                        source: "/assets/meshes/cube_023_mesh.mesh"
                                        materials: [
                                            mech_Arm__02_material
                                        ]
                                    }
                                    Node {
                                        id: empty_051
                                        position: Qt.vector3d(0.389575, -0.162363, -1.62506e-05)
                                        rotation: Qt.quaternion(0.58834, -0.588392, -0.392148, 0.392264)
                                        Node {
                                            id: empty_049
                                            position: Qt.vector3d(0.0690344, -0.00197406, -0.437096)
                                            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                                            scale: Qt.vector3d(1, 1, 1)
                                            Model {
                                                id: cylinder_040
                                                position: Qt.vector3d(-0.000628306, 0, 0)
                                                rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
                                                source: "/assets/meshes/cylinder_030_mesh.mesh"
                                                materials: [
                                                    clamps_material
                                                ]
                                            }
                                        }
                                        Node {
                                            id: empty_050
                                            position: Qt.vector3d(-0.0684057, -0.00197318, -0.437096)
                                            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                                            scale: Qt.vector3d(1, 1, 1)
                                            Model {
                                                id: cylinder_039
                                                rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
                                                source: "/assets/meshes/cylinder_028_mesh.mesh"
                                                materials: [
                                                    clamps_material
                                                ]
                                            }
                                        }
                                        Model {
                                            id: grab
                                            position: Qt.vector3d(0, 0, 0.130928)
                                            rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
                                            scale: Qt.vector3d(1, 1, 1)
                                            source: "/assets/meshes/cylinder_011_mesh.mesh"
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
            position: Qt.vector3d(-1.32942, 0.187929, 0)
            source: "/assets/meshes/cube_mesh.mesh"
            materials: [
                material_001_material
            ]
        }
    }

    // Animations:
    Timeline {
        startFrame: 0
        endFrame: 7000
        currentFrame: 0
        enabled: fullAnimation
        animations: TimelineAnimation {
            id: robotAnimation
            duration: 7000
            from: 0
            to: 7000
            running: true
            pingPong: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: cube
            property: "position"
            keyframeSource: "/assets/animations/cube_position_0.qad"
        }
        KeyframeGroup {
            target: cube
            property: "rotation"
            keyframeSource: "/assets/animations/cube_rotation_0.qad"
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
            target: empty_050
            property: "rotation"
            keyframeSource: "/assets/animations/empty_050_rotation_0.qad"
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
            target: empty_049
            property: "rotation"
            keyframeSource: "/assets/animations/empty_049_rotation_0.qad"
        }
        KeyframeGroup {
            target: empty_051
            property: "rotation"
            keyframeSource: "/assets/animations/empty_051_rotation_0.qad"
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
            target: cylinder_023
            property: "position"
            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-3.57628e-08, 4.08967e-08, 1.43051e-07)
            }
        }
        KeyframeGroup {
            target: empty_048
            property: "position"
            keyframeSource: "/assets/animations/empty_048_position_0.qad"
        }
        KeyframeGroup {
            target: empty_048
            property: "rotation"
            keyframeSource: "/assets/animations/empty_048_rotation_0.qad"
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
            keyframeSource: "/assets/animations/empty_043_rotation_0.qad"
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
            target: empty_047
            property: "position"
            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-3.58203e-07, 0.367908, 1.45752e-07)
            }
        }
        KeyframeGroup {
            target: empty_044
            property: "rotation"
            keyframeSource: "/assets/animations/empty_044_rotation_0.qad"
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
            keyframeSource: "/assets/animations/empty_046_rotation_0.qad"
        }
        KeyframeGroup {
            target: empty_045
            property: "position"
            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(-1.42702e-07, 0.414304, -2.01743e-07)
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
    }
}
