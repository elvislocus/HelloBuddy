//
//  UpgradeButton.swift
//  HelloBuddy
//
//  Created by Elvis Lin on 2025/1/1.
//

import SwiftUI

struct UpgradeButton: View {

    var height: CGFloat
    var backgroundColor: Color
    var foregroundColor: Color
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Text("フランに登録する")
                .font(.system(size: height / 2))
                .foregroundColor(foregroundColor)
                .frame(maxWidth: .infinity)
        }
        .padding(.vertical, height / 4)
        .background(backgroundColor)
        .cornerRadius(height / 2)
        .shadow(
            color: .black.opacity(0.3),
            radius: 7,
            x: 1,
            y: 3
        )
    }
}

#Preview {
    UpgradeButton(
        height: 48,
        backgroundColor: .buttonBackground,
        foregroundColor: .white,
        action: {}
    )
    .padding(.horizontal, 20)
}
