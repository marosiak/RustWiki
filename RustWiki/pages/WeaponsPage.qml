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
                    mainData.ingradients_ = model.ingradients
                    mainData.image_ = model.image;
                }
            }

            ScrollIndicator.vertical: ScrollIndicator { }
        }
    }
}
