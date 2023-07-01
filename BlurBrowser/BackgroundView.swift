//
//  BackgroundView.swift
//  BlurBrowser
//
//  Created by Lou Zell on 6/30/23.
//

import SwiftUI
import MetalKit

struct BackgroundView: View {

    var body: some View {
        ZStack {
            TimelineView(.animation) { _ in
                HStack {
                    Spacer().frame(width: 0)
                    Rectangle().fill(.red).frame(height: 70)
                    Rectangle().fill(.orange).frame(height: 70)
                    Rectangle().fill(.yellow).frame(height: 70)
                    Rectangle().fill(.green).frame(height: 70)
                    Rectangle().fill(.blue).frame(height: 70)
                    Rectangle().fill(.indigo).frame(height: 70)
                    Rectangle().fill(.purple).frame(height: 70)
                    Spacer().frame(width: 0)
                }
                .distortionEffect(
                    .init(
                        function: .init(library: .default, name: "sponge"),
                        arguments: [.float(Double(DispatchTime.now().uptimeNanoseconds) / 1E9)]
                    ),
                    maxSampleOffset: .zero
                )
            }
        }
    }
}
