//
//  MaterialEffectsView.swift
//  BlurBrowser
//
//  Created by Lou Zell on 6/30/23.
//

import SwiftUI


private let kMaterials = [
    ("Material.bar", Material.bar),
    ("Material.regular", Material.regular),
    ("Material.thick", Material.thick),
    ("Material.thin", Material.thin),
    ("Material.ultraThick", Material.ultraThick),
    ("Material.ultraThin", Material.ultraThin),
    ("Material.regularMaterial", Material.regularMaterial),
    ("Material.thickMaterial", Material.thickMaterial),
    ("Material.thinMaterial", Material.thinMaterial),
    ("Material.ultraThickMaterial", Material.ultraThickMaterial),
    ("Material.ultraThinMaterial", Material.ultraThinMaterial),
]

struct MaterialEffectsView: View {

    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<kMaterials.count, id: \.self) { i in
                    Spacer()
                    Section(kMaterials[i].0) {
                        ZStack {
                            BackgroundView()
                            TrackingView {
                                Rectangle()
                                    .frame(width: 150, height: 110)
                                    .background(kMaterials[i].1)
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
