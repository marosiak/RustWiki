import QtQuick 2.6
import QtQuick.Controls 2.0

Pane {
    id: pane

    Column {
        id: column1
        spacing: 10
        anchors.fill: parent
        Image {
            source: mainData.image_
            anchors.horizontalCenter: parent.horizontalCenter

        }

        Row {
            Label {
                text: "Ingradients:  "
            }
            Label {
                id: typeLabel
                text: mainData.ingradients_
            }
        }
    }
}
