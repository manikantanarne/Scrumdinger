//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by NMK on 02/08/24.
//

import SwiftUI

struct MeetingFooterView: View {
    
    let speakers: [ScrumTimer.Speaker]
    var skipAction: () -> Void
    
    private var speakerNumber: Int? {
        guard let index = speakers.firstIndex(where: { !$0.isCompleted }) else { return nil }
        return index + 1
    }
    
    private var isLastSpeaker: Bool {
        speakers.dropLast().allSatisfy({ $0.isCompleted })
    }
    
    private var speakerText: String {
        guard let number = speakerNumber else { return "No more speakers" }
        return "Speaker \(number) of \(speakers.count)"
    }
    
    var body: some View {
        VStack {
            HStack {
                if isLastSpeaker {
                    Text("Last Speaker")
                } else {
                    Text(speakerText)
                    Spacer()
                    Button(action: skipAction) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Next speaker")
                }
            }
        }
        .padding([.bottom, .horizontal])
    }
}


#Preview(traits: .fixedLayout(width: 400, height: 50)) {
    MeetingFooterView(speakers: DailyScrum.sampleData[0].attendees.speakers, skipAction: {})
}
