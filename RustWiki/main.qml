import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.2
import Qt.labs.folderlistmodel 2.1
import QtQuick.Layouts 1.1


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ToolBar {
        width: parent.width
        ToolButton {
            Image {
                source: "./menu.png"
                width: parent.width/1.2
                height: parent.height/1.2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
    Drawer {
        id: drawer
        width: 250
        height: parent.height
        position: 0
        ListView {
            width: parent.width
            height: parent.height
            model: ["Weapons", "Items", "Building", "Environment", "Mechanics", "Guides"]
            delegate: ItemDelegate {
                text: modelData
                width: parent.width
                onClicked: console.log("clicked:", modelData)
            }
            ScrollIndicator.vertical: ScrollIndicator { }
        }
    }
}
