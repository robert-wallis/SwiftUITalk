//
//  InputView.swift
//  SwiftUITalk
//
//  Created by Robert Wallis on 12/30/19.
//  Copyright © 2019 Robert Wallis. All rights reserved.
//

import SwiftUI

struct InputView: View {

    @State var input = "Input"

    var body: some View {
        VStack {
            Text("What about \(input)?")
                .padding()
            TextField("input", text: $input)
                .padding()
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
