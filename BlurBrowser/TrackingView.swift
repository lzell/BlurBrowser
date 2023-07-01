//
//  OverlayView.swift
//  BlurBrowser
//
//  Created by Lou Zell on 6/30/23.
//

import UIKit
import SwiftUI

struct TrackingView<Content: View>: View {
    @State private var dragOffset = CGSize.zero

    let content: () -> Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    var body: some View {
        self.content()
            .offset(CGSize(width: dragOffset.width, height:0))
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        dragOffset = gesture.translation
                    }
                    .onEnded { gesture in
                        dragOffset = .zero
                    }
            )
    }
}
