//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Yudhi Kusuma on 10/06/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
