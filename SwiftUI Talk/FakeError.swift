//
//  FakeError.swift
//  SwiftUITalk
//
//  Created by Robert Wallis on 12/30/19.
//  Copyright © 2019 Robert Wallis. All rights reserved.
//

import SwiftUI

struct FakeError: View {
    let text: String
    var body: some View {
        Text(text)
            .padding(6)
            .background(Color(hue: 0, saturation: 0.8, brightness: 0.6, opacity: 1))
    }
}

struct FakeError_Previews: PreviewProvider {
    static var previews: some View {
        FakeError(text: "Unable to make sense; lost marbles in PreviewProvider")
    }
}
