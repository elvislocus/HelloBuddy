//
//  AnimatedGradientBar.swift
//  HelloBuddy
//
//  Created by Elvis Lin on 2025/1/1.
//

import SwiftUI

struct AnimatedGradientBar: View {

    struct Config {
        let width: CGFloat
        let targetHeight: CGFloat
        let cornerRadius: CGFloat
        let startPointColor: Color
        let endPointColor: Color
        let duration: Double
        let delay: Double
    }

    let config: Config

    @State private var heightProgress: CGFloat = 0

    var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [config.startPointColor, config.endPointColor],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .clipShape(
                    .rect(
                        topLeadingRadius: config.cornerRadius,
                        topTrailingRadius: config.cornerRadius
                    )
                )
                .frame(
                    width: config.width,
                    height: config.targetHeight * heightProgress
                )
                .frame(maxHeight: geometry.size.height, alignment: .bottom)
                .onAppear {
                    withAnimation(.easeInOut(duration: config.duration).delay(config.delay)) {
                        heightProgress = 1.0
                    }
                }
        }
        .frame(width: config.width)
    }
}

#Preview {
    HStack(spacing: 20) {
        AnimatedGradientBar(
            config: AnimatedGradientBar.Config(
                width: 50,
                targetHeight: 200,
                cornerRadius: 5,
                startPointColor: .barBright,
                endPointColor: .barDim,
                duration: 3,
                delay: 0.0
            )
        )

        AnimatedGradientBar(
            config: AnimatedGradientBar.Config(
                width: 50,
                targetHeight: 300,
                cornerRadius: 5,
                startPointColor: .barBright,
                endPointColor: .barDim,
                duration: 3,
                delay: 0.3
            )
        )

        AnimatedGradientBar(
            config: AnimatedGradientBar.Config(

                width: 50,
                targetHeight: 400,
                cornerRadius: 5,
                startPointColor: .barBright,
                endPointColor: .barDim,
                duration: 3,
                delay: 0.6
            )
        )
    }
}
