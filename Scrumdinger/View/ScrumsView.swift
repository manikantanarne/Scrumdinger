//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by NMK on 17/07/24.
//

import SwiftUI

struct ScrumsView: View {
    
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button() {
                    // action
                } label: {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New scrum")
            }
        }
    }
}


#Preview {
    ScrumsView(scrums: .constant(DailyScrum.sampleData))
}
