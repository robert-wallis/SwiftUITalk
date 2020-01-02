//
//  ObservationsView.swift
//  SwiftUITalk
//
//  Created by Robert Wallis on 12/30/19.
//  Copyright © 2019 Robert Wallis. All rights reserved.
//

import SwiftUI

class YerObject: ObservableObject {
    @Published var text: String
    init(text: String) {
        self.text = text
    }
}

struct ObservationsView: View {
    @State var yerObject = YerObject(text: "initial")
    var body: some View {
        VStack {
            HStack {
                TextField("text", text: $yerObject.text)
            }
            HStack {
                ObservationsChildView(yerObject: yerObject)
            }
        }
        .padding()
        .background(Color.purple)
    }
}

struct ObservationsChildView: View {
    @ObservedObject var yerObject: YerObject
    var body: some View {
        VStack {
            TextField("text", text: $yerObject.text)
            ObservationGrandChildView(yerObject: yerObject)
        }
        .padding()
        .background(Color.blue)
    }
}

struct ObservationGrandChildView: View {
    @ObservedObject var yerObject: YerObject
    var body: some View {
        TextField("text", text: $yerObject.text)
            .padding()
            .background(Color.green)
    }
}

struct ObservationsView_Preview: PreviewProvider {
    static var previews: some View {
        ObservationsView()
            .frame(width: 256, height: 256)
    }
}
