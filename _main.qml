
import Qt 4.7

Item {
    id: main

    width: screenSize.width
    height: screenSize.height

    property int stage

    onStageChanged: {
        if (stage == 1) { bullet1.source = "images/progress_dot_off.png" }
        if (stage == 2) { bullet2.source = "images/progress_dot_off.png" }
        if (stage == 3) { bullet3.source = "images/progress_dot_off.png" }
        if (stage == 4) { bullet4.source = "images/progress_dot_off.png" }
        if (stage == 5) { bullet5.source = "images/progress_dot_off.png" }
    }

    Rectangle {
        id: background

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#0078C2" }
            GradientStop { position: 1.0; color: "#000000" }
        }

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        height: screenSize.height;
    }
    
    Image {
      id: logo
      
      height: 88
      width: 241
      
      x: (parent.width - width) /2
      y: parent.height / 2 - height
      
      source: "images/kubuntu_logo.png"
    }
    
    Item {
      id: progressindicator
      
      width: 21*5
      height: 21
      
      x: (parent.width - width)/2
      y: logo.y + logo.height + logo.height / 4
      
      Image {
	  id: bullet1
	  width: 21; height: 21
	  anchors.left: parent.left; anchors.top: parent.top
	  source: "images/progress_dot_on.png"
      }
      
      Image {
	  id: bullet2
	  width: 21; height: 21
	  anchors.left: parent.left; anchors.top: parent.top
	  anchors.leftMargin: 23;
	  source: "images/progress_dot_on.png"
      }
      
      Image {
	  id: bullet3
	  width: 21; height: 21
	  anchors.left: parent.left; anchors.top: parent.top
	  anchors.leftMargin: 46;
	  source: "images/progress_dot_on.png"
      }
      
      Image {
	  id: bullet4
	  width: 21; height: 21
	  anchors.left: parent.left; anchors.top: parent.top
	  anchors.leftMargin: 69;
	  source: "images/progress_dot_on.png"
      }
      
      Image {
	  id: bullet5
	  width: 21; height: 21
	  anchors.left: parent.left; anchors.top: parent.top
	  anchors.leftMargin: 92;
	  source: "images/progress_dot_on.png"
      }
    }
}

