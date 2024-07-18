//
//  CardView.swift
//  Scrumdinger
//
//  Created by NMK on 17/07/24.
//

import SwiftUI


struct CardView: View {
    
    var scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            
            Spacer()
            
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute remaining")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundStyle(scrum.theme.accentColor)
    }
}



#Preview(traits: .fixedLayout(width: 400, height: 60)) {
    var scrum = DailyScrum.sampleData[0]
    return CardView(scrum: scrum).background(scrum.theme.mainColor)
}
