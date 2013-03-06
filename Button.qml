/*********************************************
**  general button component
**  created by: charles yin
**  last update:16:39 2013-03-04
**********************************************/

import QtQuick 2.0

Item{
    property alias upimg:up.source
    property alias dnimg:down.source
    property bool releaseOutSide:false
    property bool lazyReleaseMode:false
    property int aniDuration:80
    property int funcDelay:100
    signal func()
    function forceRelease(){
        up.opacity = 1;
        down.opacity = 0;
    }
    function forcePress(){
        up.opacity = 0;
        down.opacity = 1;
    }

    width: up.width
    height: up.height

    Image{
        id:up
        Behavior on opacity {NumberAnimation{duration: aniDuration}}
    }
    Image{
        id:down
        opacity: 0
        Behavior on opacity {NumberAnimation{ duration: aniDuration}}
    }
    MouseArea{
        anchors.fill: parent
        hoverEnabled: false
        onPressed: {
            down.opacity = 1;
            up.opacity = 0;
            parent.releaseOutSide = false;
        }
        onExited: {
            down.opacity =0;
            up.opacity =1;
            parent.releaseOutSide = true;
        }
        onEntered: {
            down.opacity =1;
            up.opacity =0;
            parent.releaseOutSide = false;
        }
        onReleased: {
            if(parent.releaseOutSide == false){
                timer.restart();
                if(lazyReleaseMode)forcePressTimer.restart()
            }
        }
    }
    Timer{
        id:timer
        interval: funcDelay
        repeat: false
        running: false
        onTriggered: func()
    }
    Timer{
        id:forcePressTimer
        interval: 5
        repeat:false
        running:false
        onTriggered: forcePress()
    }
}
