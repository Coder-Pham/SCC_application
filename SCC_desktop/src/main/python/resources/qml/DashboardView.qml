import QtQuick 2.0
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.3

Rectangle{
    id: dashboardView
    width: 1200
    height: 900
    color: "#f4f6f9"

    anchors.fill: parent

    Label {
        id: labelName
        x: 21
        y: 20
        width: 132
        height: 32
        text: qsTr("Dashboard")
        font.family: "Verdana"
        font.pointSize: 14
    }

    RowLayout {
        id: summaryBox
        height: 149
        anchors.top: labelName.bottom
        anchors.topMargin: 5
        spacing: 7
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20

        Rectangle {
            id: hoursUsage
            width: 560
            height: 134
            radius: 7
            Layout.fillWidth: true
            color: "#28a745"

            Rectangle {
                id: hoursUsageFooter
                y: 98
                height: 30
                color: "#19000000"
                radius: 7
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0

                Label {
                    id: moreInfoLabel
                    x: 169
                    y: 4
                    width: 120
                    height: 20
                    color: "#ffffff"
                    text: qsTr("More Info")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 9
                    font.family: "Verdana"
                }

                Image {
                    id: rightArrowIcon
                    x: 330
                    y: 269
                    width: 21
                    height: 20
                    anchors.right: moreInfoLabel.left
                    anchors.rightMargin: -106
                    anchors.verticalCenterOffset: 0
                    anchors.verticalCenter: parent.verticalCenter
                    fillMode: Image.PreserveAspectFit
                    source: "icons/right_arrow.png"
                }

                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        parent.color = "#30000000"
                    }
                    onReleased: {
                        parent.color = "#19000000"
                    }
                }
            }

            Image {
                id: image
                x: 417
                y: 19
                width: 79
                height: 72
                anchors.right: parent.right
                anchors.rightMargin: 26
                fillMode: Image.PreserveAspectFit
                source: "icons/hours_usage.png"
            }

            Label {
                id: hoursUsageLabel
                x: 21
                y: 66
                width: 142
                height: 33
                color: "#ffffff"
                text: qsTr("Hours Usage")
                font.family: "Verdana"
                font.pointSize: 12
            }

            Label {
                id: hoursUsageNumber
                x: 21
                y: 15
                width: 57
                height: 44
                color: "#ffffff"
                text: qsTr("60")
                font.pointSize: 20
                font.bold: true
                font.family: "Verdana"
            }
        }

        Rectangle {
            id: electricalUsage
            width: 536
            height: 134
            color: "#ffc107"
            radius: 7
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Rectangle {
                id: electricalUsageFooter
                y: 98
                height: 30
                color: "#19000000"
                radius: 7
                Label {
                    id: moreInfoLabel1
                    x: 169
                    y: 4
                    width: 120
                    height: 20
                    color: "#000000"
                    text: qsTr("More Info")
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Verdana"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pointSize: 9
                }

                Image {
                    id: rightArrowIcon1
                    x: 330
                    y: 269
                    width: 21
                    height: 20
                    anchors.right: moreInfoLabel1.left
                    fillMode: Image.PreserveAspectFit
                    source: "icons/right_arrow_black.png"
                    anchors.verticalCenterOffset: 0
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.rightMargin: -106
                }
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0

                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        parent.color = "#30000000"
                    }
                    onReleased: {
                        parent.color = "#19000000"
                    }
                }
            }

            Image {
                id: image1
                x: 417
                y: 19
                width: 79
                height: 72
                anchors.right: parent.right
                fillMode: Image.PreserveAspectFit
                source: "icons/electric.png"
                anchors.rightMargin: 26
            }

            Label {
                id: electricalUsageLabel
                x: 21
                y: 66
                width: 162
                height: 33
                color: "#000000"
                text: qsTr("Electrical Usage")
                font.family: "Verdana"
                font.pointSize: 12
            }

            Label {
                id: electricalUsageNumber
                x: 21
                y: 15
                width: 57
                height: 44
                color: "#000000"
                text: qsTr("120")
                font.bold: true
                font.family: "Verdana"
                font.pointSize: 20
            }
        }
    }

    Rectangle {
        id: realtimedataBox
        color: "#ffffff"
        radius: 10
        anchors.top: summaryBox.bottom
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        border.color: "#007bff"
        border.width: 1

        Label {
            id: realtimedataLabel
            width: 181
            height: 32
            text: qsTr("Real-time Data")
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.left: parent.left
            anchors.leftMargin: 10
            font.pointSize: 14
            font.family: "Verdana"
        }

        Rectangle {
            id: line
            height: 2
            color: "#7c7c7c"
            anchors.top: realtimedataLabel.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
        }

        Label {
            id: lastupdateLabel
            x: 729
            width: 145
            height: 27
            text: qsTr("Last Updated:")
            anchors.right: lastupdateTime.left
            anchors.rightMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 15
            font.pointSize: 12
            font.family: "Verdana"
        }

        Label {
            id: lastupdateTime
            x: 873
            width: 270
            height: 27
            text: qsTr("03/06/2020 08:00:00 PM")
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.right: parent.right
            anchors.rightMargin: 10
            font.pointSize: 12
            font.family: "Verdana"
        }

        RowLayout {
            id: realtimeBox1
            height: 150
            anchors.top: line.bottom
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            spacing: 7

            Rectangle {
                id: tempDataBox
                width: 560
                height: 134
                radius: 7
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "#dc3545"

                Image {
                    id: tempImage
                    x: 417
                    y: 19
                    width: 79
                    height: 72
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 26
                    fillMode: Image.PreserveAspectFit
                    source: "icons/temp.png"
                }

                Label {
                    id: tempLabel
                    y: 85
                    width: 132
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Temperature")
                    font.bold: true
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.family: "Verdana"
                    font.pointSize: 12
                }

                Label {
                    id: tempDataNumber
                    width: 95
                    height: 44
                    color: "#ffffff"
                    text: qsTr("27°C")
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pointSize: 20
                    font.bold: true
                    font.family: "Verdana"
                }
            }

            Rectangle {
                id: humidDataBox
                width: 536
                height: 134
                color: "#17a2b8"
                radius: 7
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                Image {
                    id: humidImage
                    x: 417
                    y: 19
                    width: 79
                    height: 72
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    fillMode: Image.PreserveAspectFit
                    source: "icons/humid.png"
                    anchors.rightMargin: 26
                }

                Label {
                    id: humidLabel
                    y: 66
                    width: 108
                    height: 33
                    color: "#ffffff"
                    text: qsTr("Humidity")
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 20
                    font.bold: true
                    font.family: "Verdana"
                    font.pointSize: 12
                }

                Label {
                    id:humidDataNumber
                    width: 101
                    height: 44
                    color: "#ffffff"
                    text: qsTr("50%")
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.bold: true
                    font.family: "Verdana"
                    font.pointSize: 20
                }
            }
        }

        RowLayout {
            id: realtimeBox2
            height: 150
            anchors.top: realtimeBox1.bottom
            anchors.topMargin: 45
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 20
            spacing: 7

            Rectangle {
                id: avgtempDataBox
                width: 560
                height: 134
                radius: 7
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "#6c757d"

                Image {
                    id: avgtempImage
                    x: 417
                    y: 19
                    width: 79
                    height: 72
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 26
                    fillMode: Image.PreserveAspectFit
                    source: "icons/temp.png"
                }

                Label {
                    id: avgtempLabel
                    y: 85
                    width: 249
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Average Temperature")
                    font.bold: true
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.family: "Verdana"
                    font.pointSize: 12
                }

                Label {
                    id: avgtempDataNumber
                    width: 95
                    height: 44
                    color: "#ffffff"
                    text: qsTr("27°C")
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pointSize: 20
                    font.bold: true
                    font.family: "Verdana"
                }
            }

            Rectangle {
                id: avghumidDataBox
                width: 536
                height: 134
                color: "#6c757d"
                radius: 7
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                Image {
                    id: avghumidImage
                    x: 417
                    y: 19
                    width: 79
                    height: 72
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    fillMode: Image.PreserveAspectFit
                    source: "icons/humid.png"
                    anchors.rightMargin: 26
                }

                Label {
                    id: avghumidLabel
                    y: 66
                    width: 209
                    height: 33
                    color: "#ffffff"
                    text: qsTr("Average Humidity")
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 20
                    font.bold: true
                    font.family: "Verdana"
                    font.pointSize: 12
                }

                Label {
                    id: avghumidDataNumber
                    width: 101
                    height: 44
                    color: "#ffffff"
                    text: qsTr("50%")
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.bold: true
                    font.family: "Verdana"
                    font.pointSize: 20
                }
            }
        }

        RowLayout {
            id: realtimeBox3
            height: 150
            anchors.top: realtimeBox2.bottom
            anchors.topMargin: 45
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 20
            spacing: 7

            Rectangle {
                id: tophoursDataBox
                width: 560
                height: 134
                radius: 7
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "#6c757d"

                Image {
                    id: tophourspImage
                    x: 417
                    y: 19
                    width: 79
                    height: 72
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 26
                    fillMode: Image.PreserveAspectFit
                    source: "icons/hours_usage.png"
                }

                Label {
                    id: tophoursLabel
                    y: 85
                    width: 203
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Top Hours Usage")
                    font.bold: true
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.family: "Verdana"
                    font.pointSize: 12
                }

                Label {
                    id: tophoursDataNumber
                    width: 438
                    height: 32
                    color: "#ffffff"
                    text: qsTr("LIGHT200: 12 Hours")
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pointSize: 14
                    font.bold: true
                    font.family: "Verdana"
                }
            }

            Rectangle {
                id: topelectricDataBox
                width: 536
                height: 134
                color: "#6c757d"
                radius: 7
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                Image {
                    id: topelectricImage
                    x: 417
                    y: 19
                    width: 79
                    height: 72
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    fillMode: Image.PreserveAspectFit
                    source: "icons/electric.png"
                    anchors.rightMargin: 26
                }

                Label {
                    id: topelectricLabel
                    y: 66
                    width: 237
                    height: 33
                    color: "#ffffff"
                    text: qsTr("Top Electrical Usage")
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 20
                    font.bold: true
                    font.family: "Verdana"
                    font.pointSize: 12
                }

                Label {
                    id: topelectricNumber
                    width: 413
                    height: 33
                    color: "#ffffff"
                    text: qsTr("LIGHT200: 20 kWh")
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.bold: true
                    font.family: "Verdana"
                    font.pointSize: 14
                }
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:2;anchors_width:1160;anchors_x:21;anchors_y:58}D{i:24;anchors_height:150}
D{i:33;anchors_height:150}D{i:42;anchors_height:150;anchors_y:476}
}
##^##*/
