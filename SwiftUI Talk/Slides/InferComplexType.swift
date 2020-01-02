//
//  InferComplexType.swift
//  SwiftUITalk
//
//  Created by Robert Wallis on 12/30/19.
//  Copyright © 2019 Robert Wallis. All rights reserved.
//

import SwiftUI

struct InferComplexType: View {
    var body: some View {
        VStack {
            FakeError(text: "Unable to infer complex closure return type; add explicit type to disambiguate")
            Text("DEMO! \(String(describing: self))").padding()
        }
    }
}

struct InferComplexType_Previews: PreviewProvider {
    static var previews: some View {
        InferComplexType()
    }
}

// MARK: ORIGINAL PROBLEM
//        ScrollView {
//            ForEach(1...30, id: \.self) { i in
//                if (i % 3) == 0 && (i % 5) == 0 {
//                    Text("Fizz Buzz")
//                } else if i % 3 == 0 {
//                    Text("Fizz")
//                } else if i % 5 == 0 {
//                    Text("Buzz")
//                } else {
//                    Text("\(i)")
//                }
//            }
//        }

// MARK: COMPLEXITY TEXT MODIFIER
//        ScrollView {
//            ForEach(1...30, id: \.self) { i -> Text in
//                if (i % 3) == 0 && (i % 5) == 0 {
//                    return Text("Fizz Buzz")
//                        .background(Color.red)
//                } else if i % 3 == 0 {
//                    return Text("Fizz")
//                } else if i % 5 == 0 {
//                    return Text("Buzz")
//                } else {
//                    return Text("\(i)")
//                }
//            }
//        }

/// # SOLUTION :/ -----------------------------------------------
//        ScrollView {
//            ForEach(1...30, id: \.self) { i -> AnyView in
//                if (i % 3) == 0 && (i % 5) == 0 {
//                    return Text("Fizz Buzz")
//                        .background(Color.red)
//                        .anyView()
//                } else if i % 3 == 0 {
//                    return Text("Fizz").anyView()
//                } else if i % 5 == 0 {
//                    return Text("Buzz").anyView()
//                } else {
//                    return Text("\(i)").anyView()
//                }
//            }
//        }
