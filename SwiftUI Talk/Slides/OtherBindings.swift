//
//  OtherBindings.swift
//  SwiftUITalk
//
//  Created by Robert Wallis on 12/30/19.
//  Copyright © 2019 Robert Wallis. All rights reserved.
//

import SwiftUI

struct OtherBindings: View {
    @State var one = "One"

    var body: some View {
        VStack {
            TextField("one", text: $one)
            HStack {
                VStack {
                    Text("let")
                    OtherBindingsStateView(text: one)
                        .padding()
                }.padding()
                VStack {
                    Text("@State")
                    OtherBindingsStateView(text: one)
                        .padding()
                }.padding()
                VStack {
                    Text("@Binding")
                    OtherBindingsBindingView(text: $one)
                        .padding()
                }.padding()
            }
        }
    }
}

struct NoBindingView: View {
    let text: String
    var body: some View {
        Text(text)
    }
}

struct OtherBindingsStateView: View {
    @State var text: String
    var body: some View {
        Text(text)
    }
}

struct OtherBindingsBindingView: View {
    @Binding var text: String
    var body: some View {
        Text(text)
    }
}

struct OtherBindings_Previews: PreviewProvider {
    static var previews: some View {
        OtherBindings()
    }
}
