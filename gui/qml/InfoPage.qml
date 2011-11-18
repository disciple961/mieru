//OptionsPage.qml
//import Qt 4.7
import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    tools: ToolBarLayout {
        ToolIcon { iconId: "toolbar-back"
            onClicked: pageStack.pop()
        }
        ButtonRow {
            platformStyle: TabButtonStyle { }
            TabButton {
                text: "Info"
                tab: tab1
            }
            TabButton {
                text: "Stats"
                tab: tab2
            }
            TabButton {
                text: "About"
                tab: tab3
            }
        }
           }
    TabGroup {
           id: tabGroup

           currentTab: tab1

           Page {
               id: tab1
               Column {
                   spacing: 10

                   Text {
                       text: "Current manga info"
                   }
               }
           }
           Page {
               id: tab2
               Column {
                   spacing: 10

                   Text {
                       text: "Statistics"
                   }
               }
           }
           Page {
               id: tab3
               Column {
                   spacing: 10

                   Text {
                       text: "About"
                   }
               }
           }
    }
}