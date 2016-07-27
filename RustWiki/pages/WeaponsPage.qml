import QtQuick 2.6
import QtQuick.Controls 2.0
import "../json"

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
            text: "Weapons"
        }
        ListView {
            width: parent.width
            height: 420
            model: weapons.model
            JSONListModel {
                id: weapons
                query: "$.guns.rangedweapons[*]"
                source: "gunsList.txt"
            }
            delegate: ItemDelegate {
                text: model.name
                width: parent.width
                onClicked: {
                    stackView.replace("qrc:/pages/DataPage.qml")
                    mainData.name_ = model.name
                    mainData.image_ = model.image
                    mainData.type_ = model.type
                    mainData.firemode_ = model.firemode
                    mainData.damage_head_ = model.damage_head
                    mainData.damage_chest_ = model.damage_chest
                    mainData.damage_arms_ = model.damage_arms
                    mainData.damage_legs_ = model.damage_legs
                    mainData.recoil_ = model.recoil
                    mainData.range_ = model.range
                    mainData.ammo_ = model.ammo
                    mainData.level_ = model.level
                    mainData.expcost_ = model.expcost
                    mainData.ingradients_ = model.ingradients
                }
            }

            ScrollIndicator.vertical: ScrollIndicator { }
        }
    }
}
