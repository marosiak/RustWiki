import QtQuick 2.6
import QtQuick.Controls 2.0

Pane {
    id: pane
    Column {
        id: column1
        spacing: 10
        anchors.fill: parent

        Label {
            width: parent.width
            font.pixelSize: 18
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            text: "Ranged Weapons"
        }
        ListView {
            width: parent.width
            height: 420
            model: ["Hunting bow", "Bolt action rifle", "Assault Rifle", "Pump Shotgun"]
            delegate: ItemDelegate {
                text: modelData
                width: parent.width
                onClicked: console.log("clicked:", modelData)
            }

            ScrollIndicator.vertical: ScrollIndicator { }
        }
    }
}
