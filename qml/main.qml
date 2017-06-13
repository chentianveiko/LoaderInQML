import QtQuick 2.5
import QtQuick.Window 2.0

Window {
    property bool isFirst : true;
    width: 200
    height: 200
    visible: true;

    Loader {
        id: pageLoader
    }

    MouseArea {
        anchors.fill: parent
        onClicked: changePage();
    }

    function changePage() {
        if(isFirst) {
            pageLoader.source = "Page1.qml"
        } else {
            pageLoader.source = "Page2.qml"
        }

        isFirst = !isFirst;
    }
}
