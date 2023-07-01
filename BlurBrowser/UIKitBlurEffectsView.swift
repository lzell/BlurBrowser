//
//  UIKitVisualEffects.swift
//  BlurBrowser
//
//  Created by Lou Zell on 6/30/23.
//

import SwiftUI
import UIKit


struct UIKitBlurEffectsView: View {

    var body: some View {
        VStack {
            ScrollView {
                ForEach(UIBlurEffect.Style.all, id: \.self) { blurEffectStyle in
                    Spacer()
                    Section(String(describing: blurEffectStyle)) {
                        ZStack {
                            BackgroundView()
                            TrackingView {
                                BlurView(blurEffectStyle: blurEffectStyle)
                            }
                            .frame(width: 150, height: 110)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

private struct BlurView: UIViewRepresentable {
    let blurEffectStyle: UIBlurEffect.Style
    func updateUIView(_ uiView: UIView, context: Context) {}

    func makeUIView(context: Context) -> UIView {
        let view = UIVisualEffectView(frame: .zero)
        view.effect = UIBlurEffect(style: self.blurEffectStyle)
        return view
    }
}
