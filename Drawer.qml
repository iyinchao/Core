import QtQuick 2.0
Rectangle {
    width: 410
    height: 670
    color:"#00000000"

    Image {
        source: "image/drawer/drawer_bg.png"
        anchors.right: parent.right
        anchors.verticalCenter : parent.verticalCenter
    }
    Item{
        id:modeSelect_pane
        width:parent.width
        height: parent.height
        x:0
        y:0
        Image{
            source:"image/drawer/modeselect_text.png"
            anchors.top: parent.top
            anchors.right: parent.right
        }
        Button{
            id:replay_bt
            anchors.right:parent.right
            anchors.top:parent.top
            anchors.topMargin: 20
            upimg: "image/drawer/replay_u_bt.png"
            dnimg: "image/drawer/replay_d_bt.png"
            lazyReleaseMode: true;
            onFunc: {
                console.log("sdfs");
            }
        }
        Button{
            id:newgame_bt
            anchors.right:parent.right
            anchors.top:parent.top
            anchors.topMargin: 150
            upimg: "image/drawer/newgame_u_bt.png"
            dnimg: "image/drawer/newgame_d_bt.png"
            //lazyReleaseMode: true;
            onFunc: {
                console.log("sdfs");
                replay_bt.forceRelease();
                loadrec_bt.forceRelease();
            }
        }
        Button{
            id:loadrec_bt
            anchors.right:parent.right
            anchors.top:parent.top
            anchors.topMargin: 300
            upimg: "image/drawer/loadrec_u_bt.png"
            dnimg: "image/drawer/loadrec_d_bt.png"
            lazyReleaseMode: true;
            onFunc: {
                console.log("sdfs");
            }
        }
    }
}
