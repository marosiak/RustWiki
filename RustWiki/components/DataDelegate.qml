import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
Item {
    property string text1: "Example:"
    property string text2: "Example2"
    width: 120
    height: 50
    Column {
        anchors.fill: parent
        spacing: 0
        Rectangle {
            height: 1
            width: parent.width
            //color: Qt.rgba(0, 0, 0, 0.12);
        }
        Rectangle {
            width: parent.width
            height: parent.height-2
            color: "white"
            Column {
                spacing: 5
                Label {
                    text: text1
                }
                Label {
                    text: text2
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
