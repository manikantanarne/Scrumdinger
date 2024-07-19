//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by NMK on 19/07/24.
//

import SwiftUI

struct ThemeView: View {
    
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .padding(5)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundStyle(theme.accentColor)
            .clipShape(.rect(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .lavender)
}
