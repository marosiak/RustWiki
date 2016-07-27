import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.2
import Qt.labs.folderlistmodel 2.1
import QtQuick.Layouts 1.1
import "json"
import "components"


ApplicationWindow {
    id: window
    visible: true
    width: 380
    height: 570
    title: qsTr("Rust Wiki")
    Item {
        id: mainData
        property string name_: "Example"
        property string image_: "../icons/missing.png"
        property string type_: "Example"
        property string firemode_: "Example"
        property string damage_head_: "Example"
        property string damage_chest_: "Example"
        property string damage_arms_: "Example"
        property string damage_legs_: "Example"
        property string recoil_: "Example"
        property string range_: "Example"
        property string ammo_: "Example"
        property string level_: "Example"
        property string expcost_: "Example"
        property string ingradients_: "Example"
    }
    Component.onCompleted: {Data.assignData();
        console.log(Data.getValue(Data.getHuntingBow(), "Type"))
    }
    header: ToolBar {
        width: parent.width
        ToolButton {
            onClicked: drawer.open()
            Image {
                source: "./icons/menu.png"
                width: parent.width/1.2
                height: parent.height/1.2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
    Drawer {
        id: drawer
        width: Math.min(window.width, window.height) / 3 * 2
        height: window.height
        ListView {
            id: listView
            currentIndex: -1
            anchors.fill: parent
            delegate: ItemDelegate {
                width: parent.width
                text: model.title
                onClicked: {
                    drawer.close();
                    stackView.replace(model.source)
                }
                highlighted: ListView.isCurrentItem
            }
            model: ListModel {
                ListElement { title: "Weapons"; source: "qrc:/pages/WeaponsPage.qml" }
                ListElement { title: "Items"; source: "qrc:/pages/ButtonPage.qml" }
                ListElement { title: "Building"; source: "qrc:/pages/CheckBoxPage.qml" }
                ListElement { title: "Environment"; source: "qrc:/pages/ComboBoxPage.qml" }
                ListElement { title: "Mechanics"; source: "qrc:/pages/DialPage.qml" }
            }
            ScrollIndicator.vertical: ScrollIndicator { }
        }

    }
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Pane {
            id: pane
            Label {
                text: "Welcome in Rust Wiki application, I hope you will enjoy :D Remember to give us feed back"
                horizontalAlignment: Label.AlignHCenter
                verticalAlignment: Label.AlignVCenter
                wrapMode: Label.Wrap
                width: parent.width
            }
        }
    }
}
