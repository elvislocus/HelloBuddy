//
//  FullScreenGradientView.swift
//  HelloBuddy
//
//  Created by Elvis Lin on 2025/1/1.
//

import SwiftUI

struct FullScreenGradientView: View {

    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.backgroundDim, Color.backgroundBright]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

#Preview {
    FullScreenGradientView()
        .ignoresSafeArea()
}
