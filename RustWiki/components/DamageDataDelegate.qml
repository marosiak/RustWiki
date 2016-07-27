import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
Item {
    property string head: "Example:"
    property string chest: "Example2"
    property string arms: "Example2"
    property string legs: "Example2"
    width: 120
    height: 100
    Column {
        anchors.fill: parent
        spacing: 0
        Rectangle {
            height: 1
            width: parent.width
        }
        Rectangle {
            width: parent.width
            height: parent.height-2
            color: "white"
            Column {
                spacing: 5
                Label {
                    text: "Damage:"
                }
                Column {
                    spacing: 0
                Row {
                    spacing: 6
                    Label {
                        text: "Head:"
                    }
                    Label {
                        text: mainData.damage_head_
                    }
                }
                Row {
                    spacing: 6
                    Label {
                        text: "Chest:"
                    }
                    Label {
                        text: mainData.damage_chest_
                    }
                }
                Row {
                    spacing: 6
                    Label {
                        text: "Arms:"
                    }
                    Label {
                        text: mainData.damage_arms_
                    }
                }
                Row {
                    spacing: 6
                    Label {
                        text: "Legs:"
                    }
                    Label {
                        text: mainData.damage_legs_
                    }
                }
                }
            }
        }

        Rectangle {
            height: 1
            width: parent.width
            color: Qt.rgba(0, 0, 0, 0.12);
        }
    }
}
