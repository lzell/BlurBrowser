//
//  UIKitVibrancyEffectsView.swift
//  BlurBrowser
//
//  Created by Lou Zell on 7/2/23.
//

import SwiftUI

struct UIKitVibrancyEffectsView: View {

    let vibrancyEffect: UIVibrancyEffectStyle

    var body: some View {
        VStack {
            Spacer()
            ScrollView {
                ForEach(UIBlurEffect.Style.all, id: \.self) { blurEffectStyle in
                        Spacer()
                        Section(String(describing: blurEffectStyle)) {
                            ZStack {
                                BackgroundView()
                                TrackingView {
                                    VibrancyEffectView(
                                        blurEffectStyle: blurEffectStyle,
                                        vibrancyEffectStyle: vibrancyEffect)
                                }
                                .frame(width: 150, height: 110)
                            }
                        }
                        Spacer()
                    }
                }
        }.navigationTitle(
            "Vibrancy: " + String(describing: vibrancyEffect).split(separator: ".")[1]
        )
    }
}

private struct VibrancyEffectView: UIViewRepresentable {
    let blurEffectStyle: UIBlurEffect.Style
    let vibrancyEffectStyle: UIVibrancyEffectStyle

    func updateUIView(_ uiView: UIView, context: Context) {}

    func makeUIView(context: Context) -> UIView {
        let blurEffectView = UIVisualEffectView(frame: .zero)
        let blurEffect = UIBlurEffect(style: self.blurEffectStyle)
        blurEffectView.effect = blurEffect

        let vibrancyEffectView = UIVisualEffectView(frame: .zero)
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect,
                                              style: self.vibrancyEffectStyle)
        vibrancyEffectView.effect = vibrancyEffect
        vibrancyEffectView.translatesAutoresizingMaskIntoConstraints = false
        blurEffectView.contentView.addSubview(vibrancyEffectView)

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello World"
        label.textColor = UIColor.red
        vibrancyEffectView.contentView.addSubview(label)

        NSLayoutConstraint.activate([
            vibrancyEffectView.topAnchor.constraint(equalTo: blurEffectView.contentView.topAnchor),
            vibrancyEffectView.leftAnchor.constraint(equalTo: blurEffectView.contentView.leftAnchor),
            vibrancyEffectView.rightAnchor.constraint(equalTo: blurEffectView.contentView.rightAnchor),
            vibrancyEffectView.bottomAnchor.constraint(equalTo: blurEffectView.contentView.bottomAnchor),

            label.centerXAnchor.constraint(equalTo: vibrancyEffectView.contentView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: vibrancyEffectView.contentView.centerYAnchor),
        ])
        return blurEffectView
    }
}
