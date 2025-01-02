//
//  ContentView.swift
//  HelloBuddy
//
//  Created by Elvis Lin on 2025/1/1.
//

import SwiftUI

struct ContentView: View {

    private let values: [AnimatedGradientBarChart.Value] = [
        .init(label: "現在", value: 100),
        .init(label: "３ヶ月", value: 200),
        .init(label: "１年", value: 400),
        .init(label: "２年", value: 500)
    ]

    private let config: AnimatedGradientBarChart.Config = .init(
        fontSize: .barFontSize,
        barWidth: .barWidth,
        barMaxHeight: .barMaxHeight,
        cornerRadius: 5,
        startPointColor: .barBright,
        endPointColor: .barDim,
        duration: 3,
        delayInterval: 0.3
    )

    var body: some View {
        ZStack(alignment: .topTrailing) {
            // Background layer: Creates a full-screen gradient that extends beyond safe areas
            FullScreenGradientView()
                .ignoresSafeArea()

            // Main content container: Vertically stacks all primary UI elements
            VStack(spacing: .contentVerticalSpacing) {
                Text("Hello\nSpeakBudy")
                    .font(.system(size: .titleFontSize))
                    .fontWeight(.bold)
                    .foregroundColor(.labelSecondary)
                    .multilineTextAlignment(.center)

                // Chart container: Combines chart and mascot image
                ZStack(alignment: .topLeading) {
                    // Animated chart: Displays data with gradient bars
                    AnimatedGradientBarChart(
                        config: config,
                        values: values
                    )
                    .frame(height: config.barMaxHeight * 1.2)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, .barChartHorizontalPadding)

                    // Mascot overlay: Positioned at the top-left of the chart
                    Image("protty")
                        .resizable()
                        .frame(width: .mascotWidth, height: .mascotHeight)
                        .padding(.leading, .mascotLeadingPadding)
                }
                .frame(maxWidth: .infinity)

                // Description container: The description of this promotion page
                VStack(spacing: .descriptionVerticalSpacing) {
                    Text("スピークバディで")
                        .font(.system(size: .firstDescriptionFontSize))
                        .fontWeight(.bold)
                        .foregroundColor(.labelSecondary)
                        .multilineTextAlignment(.center)

                    Text("レベルアップ")
                        .font(.system(size: .secondDescriptionFontSize))
                        .fontWeight(.bold)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.labelPrimaryBright, .labelPrimaryDim],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                }

                UpgradeButton(
                    height: .upgradeButtonHeight,
                    backgroundColor: .buttonBackground,
                    foregroundColor: .white) {
                        // Action handler for upgrading the current plan
                        // TODO: Implement upgrading action
                    }
                    .padding(.horizontal, .upgradeButtonHorizontalPadding)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

            // Navigation: Close button positioned at top-right corner
            CloseButton(
                size: .closeButtonSize,
                backgroundColor: .white,
                foregroundColor: .black
            ) {
                // Action handler for dismissing the current view
                // TODO: Implement dismiss action
            }
            .padding(.top, .closeButtonPadding)
            .padding(.trailing, .closeButtonPadding)
        }
    }
}

#Preview {
    ContentView()
}
