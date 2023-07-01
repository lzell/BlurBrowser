//
//  ContentView.swift
//  BlurBrowser
//
//  Created by Lou Zell on 6/30/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        NavigationStack {
            List {
                NavigationLink {
                    UIKitBlurEffectsView()
                        .navigationTitle("UIKit Blur Effects")
                } label: {
                    Text("UIKit Blur Effects")
                }

                NavigationLink {
                    MaterialEffectsView()
                        .navigationTitle("SwiftUI Material Effects")
                } label: {
                    Text("SwiftUI Material Effects")
                }

                NavigationLink {
                    UIKitVibrancyEffectsListView()
                        .navigationTitle("UIKit Vibrancy Effects")
                } label: {
                    Text("UIKit Vibrancy Effects")
                }


            }.navigationTitle("Visual Effects")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
