//
//  AnimatedGradientBarChart.swift
//  HelloBuddy
//
//  Created by Elvis Lin on 2025/1/1.
//

import SwiftUI

struct AnimatedGradientBarChart: View {

    let config: AnimatedGradientBarChart.Config
    let values: [AnimatedGradientBarChart.Value]

    private var maxValue: Double {
        values.max(by: { $0.value < $1.value })?.value ?? 0
    }

    var body: some View {
        HStack {
            ForEach(values, id: \.label) { value in
                VStack {
                    AnimatedGradientBar(
                        config: AnimatedGradientBar.Config(
                            width: config.barWidth,
                            targetHeight: value.value / maxValue * config.barMaxHeight,
                            cornerRadius: config.cornerRadius,
                            startPointColor: config.startPointColor,
                            endPointColor: config.endPointColor,
                            duration: config.duration
                        )
                    )

                    Text(value.label)
                        .font(.system(size: config.fontSize))
                }

                if value.label != values.last?.label {
                    Spacer()
                }
            }
        }
    }
}

// MARK: - Inner Structs

extension AnimatedGradientBarChart {

    struct Config {
        let fontSize: CGFloat
        let barWidth: CGFloat
        let barMaxHeight: CGFloat
        let cornerRadius: CGFloat
        let startPointColor: Color
        let endPointColor: Color
        let duration: Double
    }

    struct Value {
        let label: String
        let value: Double
    }
}

#Preview {
    let values: [AnimatedGradientBarChart.Value] = [
        .init(label: "現在", value: 100),
        .init(label: "３ヶ月", value: 200),
        .init(label: "１年", value: 400),
        .init(label: "２年", value: 500)
    ]

    let config: AnimatedGradientBarChart.Config = .init(
        fontSize: 16,
        barWidth: 50,
        barMaxHeight: 500,
        cornerRadius: 5,
        startPointColor: .barBright,
        endPointColor: .barDim,
        duration: 3
    )

    return AnimatedGradientBarChart(
        config: config,
        values: values
    )
    .frame(maxWidth: .infinity)
    .padding(.horizontal, 50)
}
