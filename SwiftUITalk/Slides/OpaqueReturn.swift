//
//  OpaqueReturn.swift
//  SwiftUITalk
//
//  Created by Robert Wallis on 1/1/20.
//  Copyright © 2020 Robert Wallis. All rights reserved.
//

import SwiftUI

struct OpaqueReturn: View {
    @State var thing: String? = nil

    var body: some View {
        Image("OpaqueReturn")
            .resizable()
            .aspectRatio(contentMode: .fit)
//        if thing != nil {
//            return Rectangle().background(Color.red)
//        } else {
//            return Circle().background(Color.gray)
//        }
    }
}

struct OpaqueReturn_Previews: PreviewProvider {
    static var previews: some View {
        OpaqueReturn()
    }
}


/// Possible Solution

//var body: some View {
//    shapeForThing()
//        .onTapGesture {
//            if self.thing == nil {
//                self.thing = "K"
//            } else {
//                self.thing = nil
//            }
//        }
//}
//
//func shapeForThing() -> some View {
//    if thing != nil {
//        return Rectangle()
//            .background(Color.red)
//            .frame(width: 200, height: 200)
//            .anyView()
//    } else {
//        return Circle()
//            .background(Color.gray)
//            .frame(width: 200, height: 200)
//            .anyView()
//    }
//}
