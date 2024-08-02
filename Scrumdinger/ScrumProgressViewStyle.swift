//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by NMK on 02/08/24.
//

import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    var theme: Theme
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(theme.accentColor)
                .frame(height: 20.0)
            if #available(iOS 15.0, *) {
                ProgressView(configuration)
                    .tint(theme.mainColor)
                    .frame(height: 12.0)
                    .padding(.horizontal)
            } else {
                ProgressView(configuration)
                    .frame(height: 12.0)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 20), body: {
    ProgressView(value: 4)
        .progressViewStyle(ScrumProgressViewStyle(theme: .buttercup))
})
