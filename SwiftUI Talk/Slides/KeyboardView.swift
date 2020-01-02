//
//  KeyboardView.swift
//  SwiftUI Talk
//
//  Created by Robert Wallis on 1/2/20.
//  Copyright © 2020 Robert Wallis. All rights reserved.
//

import SwiftUI

struct KeyboardView: View {

    @State var text: String = "Text"
    @ObservedObject private var keyboard = KeyboardResponder()

    var body: some View {
        ScrollView {
            ZStack {
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Content needs to scroll when Keyboard Visible")
                    TextField("text", text: $text)
                        .background(
                            Color.gray
                                .opacity(0.2)
                                .cornerRadius(9))
                    .font(.largeTitle)
                }
                .padding()
            }
            .foregroundColor(Color.white)
        }
        .padding(.bottom, keyboard.currentHeight)
        .animation(.easeOut(duration: 0.16))
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
            .previewLayout(.fixed(width: 768, height: 512))
    }
}
