import QtQuick 2.0

Rectangle {
    width: 360
    height: 360
    property int i :0
    Component.onCompleted: {
        for(;i<repeater.count;i++ ){
            repeater.itemAt(i).change()
        }
    }
    Component{
        id:rep
        Rectangle{
            width:60
            height: 60
            color: "red"
            border.width: 1
            property int svalue:0;
            function change(){
                this.color = "blue";
                k.e = modelData;
                //childAt(0,0).text ="sdfsfs";
                console.log(modelData);
            }
            Text{
                id:k
                property alias e:k.text
            }
        }
    }
    Grid{
        rows:8
        columns:8
    Repeater{
        id:repeater
        model:64
        delegate: rep
    }
    }
}
