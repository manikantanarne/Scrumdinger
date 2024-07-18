//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by NMK on 17/07/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
