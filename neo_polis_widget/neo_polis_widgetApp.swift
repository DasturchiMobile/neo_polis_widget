//
//  neo_polis_widgetApp.swift
//  neo_polis_widget
//
//  Created by Azizbek Asqaraliyev on 03/12/24.
//

import SwiftUI

@main
struct neo_polis_widgetApp: App {
    @EnvironmentObject var polises : PolisViewModel
    var body: some Scene {
        WindowGroup {
            ContentView(widgetType: 0)
        }.environmentObject(polises)
    }
}
