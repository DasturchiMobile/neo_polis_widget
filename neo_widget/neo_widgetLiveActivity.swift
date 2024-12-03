//
//  neo_widgetLiveActivity.swift
//  neo_widget
//
//  Created by Azizbek Asqaraliyev on 03/12/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct neo_widgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct neo_widgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: neo_widgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension neo_widgetAttributes {
    fileprivate static var preview: neo_widgetAttributes {
        neo_widgetAttributes(name: "World")
    }
}

extension neo_widgetAttributes.ContentState {
    fileprivate static var smiley: neo_widgetAttributes.ContentState {
        neo_widgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: neo_widgetAttributes.ContentState {
         neo_widgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: neo_widgetAttributes.preview) {
   neo_widgetLiveActivity()
} contentStates: {
    neo_widgetAttributes.ContentState.smiley
    neo_widgetAttributes.ContentState.starEyes
}
