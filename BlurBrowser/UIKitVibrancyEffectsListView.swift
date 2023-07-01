//
//  UIKitVibrancyEffectsListView.swift
//  BlurBrowser
//
//  Created by Lou Zell on 6/30/23.
//

import SwiftUI
import UIKit

struct UIKitVibrancyEffectsListView: View {
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(UIVibrancyEffectStyle.all, id: \.self) { vibrancyEffect in
                    NavigationLink {
                        UIKitVibrancyEffectsView(vibrancyEffect: vibrancyEffect)
                    } label: {
                        Text(String(describing: vibrancyEffect).split(separator: ".")[1])
                    }
                }
            }
        }.navigationTitle("UIKit Vibrancy Effects")
    }
}
