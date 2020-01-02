//
//  InstanceMemberPreview.swift
//  SwiftUITalk
//
//  Created by Robert Wallis on 1/1/20.
//  Copyright © 2020 Robert Wallis. All rights reserved.
//

import SwiftUI

struct InstanceMemberView: View {
    let text: String
    var body: some View {
        Text(text)
    }
}

// MARK: SNEAKY ERROR
//struct InstanceMemberView_Previews: PreviewProvider {
//    let text = "Hi"
//    static var previews: some View {
//        InstanceMemberView(text: text)
//    }
//}
