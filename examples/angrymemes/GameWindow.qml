Game {
    id: game
    width: 2048
    height: 800

    currentScene: scene
    property int initialPos: 1500

    Scene {
        id: scene
        width: 2048
        height: 800

        Image {
            id: background
            source: "qrc:/images/background.png"
        }

        Material {
            id: mat
            friction: 0.3
            density: 50
            restitution: 0.35
        }

        Entity {
            id: projectile
            x: 100
            y: 500
            width: trollface.width
            height: trollface.height
            sleepingAllowed: false
            entityType: Bacon2D.DynamicType
            bullet: true

            Fixture {
                material: mat
                shape: Circle {
                    anchors.fill: parent
                }

                Image {
                    id: trollface
                    source: "qrc:/images/trollface.png"
                }
            }
        }
        Entity {
            id: ground
            y: 750
            entityType: Bacon2D.StaticType
            sleepingAllowed: false
            width: scene.width
            height: 50

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                    fill: ColorFill {
                        brushColor: "brown"
                    }
                }
            }

        }
        Entity {
            id: wood01
            x: initialPos
            y: ground.y - height
            width: 15
            height: 110
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }
            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }
        }
        Entity {
            id: enemy01
            x: initialPos + wood01.width + 10
            y: ground.y - height
            width: enemy1.width
            height: enemy1.height
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Circle {
                    anchors.fill: parent
                }
            }

            Image {
                id: enemy1
                source: "qrc:/images/enemy.png"
            }
        }
        Entity {
            id: wood02
            x: initialPos + wood01.width + enemy01.width + 20
            y: ground.y - height
            width: 15
            height: 110
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }
            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }

        }
        Entity {
            id: wood011
            x: initialPos + 55
            y: ground.y - (1.6 * height)
            width: 15
            height: 110
            rotation: 90
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }
            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }

        }
        Entity {
            id: wood022
            x: initialPos + 175
            y: ground.y - (1.6 * height)
            width: 15
            height: 110
            rotation: 90
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }

            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }
        }
        Entity {
            id: enemy02
            x: initialPos + wood01.width + enemy01.width + wood02.width + 30
            y: ground.y - height
            width: enemy2.width
            height: enemy2.height
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Circle {
                    anchors.fill: parent
                }
            }

            Image {
                id: enemy2
                source: "qrc:/images/enemy.png"
            }
        }
        Entity {
            id: wood03
            x: initialPos + wood01.width + enemy01.width + wood02.width + enemy02.width + 40
            y: ground.y - height
            width: 15
            height: 110
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }

            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }
        }
        Entity {
            id: wood04
            x: initialPos + 60
            y: 500
            width: 15
            height: 110
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }

            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }
        }
        Entity {
            id: wood044
            x: initialPos + 115
            y: 430
            width: 15
            height: 110
            rotation: 90
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }

            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }
        }
        Entity {
            id: enemy03
            x: initialPos + wood04.width + 60
            y: ground.y - height - 300
            width: enemy3.width
            height: enemy3.height
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Circle {
                    anchors.fill: parent
                }
            }

            Image {
                id: enemy3
                source: "qrc:/images/enemy.png"
            }
        }
        Entity {
            id: wood05
            x: initialPos + wood04.width + enemy03.width + 70
            y: 500
            width: 15
            height: 110
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }

            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }
        }

        // forever alone
        Entity {
            id: woodf
            x: initialPos + 400
            y: ground.y - height
            width: 15
            height: 110
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }

            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }
        }
        Entity {
            id: enemyf
            x: initialPos + 400 + woodf.width + 10
            y: ground.y - height
            width: enemyfa.width
            height: enemyfa.height
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Circle {
                    anchors.fill: parent
                }
            }

            Image {
                id: enemyfa
                source: "qrc:/images/alone.png"
            }
        }
        Entity {
            id: woodf2
            x: initialPos + 400 + woodf.width + enemyf.width + 10
            y: ground.y - height
            width: 15
            height: 110
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }

            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }
        }
        Entity {
            id: woodff
            x: initialPos + 450
            y: ground.y - (1.6 * height)
            width: 15
            height: 110
            rotation: 90
            entityType: Bacon2D.DynamicType
            sleepingAllowed: false

            Fixture {
                material: mat
                shape: Box {
                    anchors.fill: parent
                }
            }

            Image {
                source: "qrc:/images/wood.jpg"
                anchors.fill: parent
            }
        }

    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            var xLaunch = 800 * (game.mouse.x - projectile.x);
            var yLaunch = 800 * (game.mouse.y - projectile.y);

            xLaunch = xLaunch > 150000 ? 150000 : xLaunch
            yLaunch = yLaunch < -150000 ? -150000 : yLaunch

            print (xLaunch, yLaunch)

            projectile.applyLinearImpulse(Qt.point(xLaunch, yLaunch),
                                          Qt.point(projectile.x + projectile.width / 2.0, projectile.y + projectile.height / 2.0)) // XXX expose b2pos

        }
    }
}
