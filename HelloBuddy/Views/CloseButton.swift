//
//  CloseButton.swift
//  HelloBuddy
//
//  Created by Elvis Lin on 2025/1/1.
//

import SwiftUI

struct CloseButton: View {

    var size: CGFloat
    var backgroundColor: Color
    var foregroundColor: Color
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "xmark")
                .foregroundColor(foregroundColor)
                .font(.system(size: size / 2))
                .frame(width: size, height: size)
                .background(
                    Circle()
                        .fill(backgroundColor)
                        .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 2)
                )
        }
    }
}

#Preview {
    CloseButton(
        size: 64,
        backgroundColor: .white,
        foregroundColor: .black,
        action: {}
    )
}
