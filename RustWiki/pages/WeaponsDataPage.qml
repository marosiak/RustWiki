import QtQuick 2.6
import QtQuick.Controls 2.0
import "../components"

Pane {
    id: pane
    Column {
        id: column1
        spacing: 16
        anchors.fill: parent
        Row {
            width: parent.width
            height: 100
            spacing: 18
            Image {
                source: mainData.image_
                width: parent.height
                height: parent.height
            }
            Label {
                text: mainData.name_
                font.pixelSize: 29
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Flickable {
            // ...

            height: parent.height-110
            contentHeight: 50*8+190
            ScrollBar.vertical: ScrollBar { }
            width: parent.width;
            clip: true
            Column {
                width: parent.width
                height: parent.height
                spacing: 10
            DataDelegate {
                width: parent.width;
                text1: "Type:"
                text2: mainData.type_
            }
            DataDelegate {
                width: parent.width;
                text1: "Firemode:"
                text2: mainData.firemode_
            }
            DamageDataDelegate {
                width: parent.width;
            }
            DataDelegate {
                width: parent.width;
                text1: "Recoil:"
                text2: mainData.recoil_
            }
            DataDelegate {
                width: parent.width;
                text1: "Range:"
                text2: mainData.range_
            }
            DataDelegate {
                width: parent.width;
                text1: "Ammo:"
                text2: mainData.ammo_
            }
            DataDelegate {
                width: parent.width;
                text1: "Level:"
                text2: mainData.level_
            }
            DataDelegate {
                width: parent.width;
                text1: "Exp:"
                text2: mainData.expcost_
            }
            DataDelegate {
                width: parent.width;
                text1: "Ingradients:"
                text2: mainData.ingradients_
            }
            }
        }
    }
}
