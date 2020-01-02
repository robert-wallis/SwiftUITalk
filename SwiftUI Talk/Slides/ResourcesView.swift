//
//  ResourcesView.swift
//  SwiftUI Talk
//
//  Created by Robert Wallis on 1/2/20.
//  Copyright © 2020 Robert Wallis. All rights reserved.
//

import SwiftUI

struct ResourcesView: View {
    var body: some View {
        VStack {
            Text("Advanced:")
            Section {
                ButtonWebLink(title: "SwiftWithMajid.com",
                              url: "https://swiftwithmajid.com")
                ButtonWebLink(title: "SwiftUI-Lab.com",
                              url: "https://swiftui-lab.com")
                ButtonWebLink(title: "A Companion for SwiftUI $49.99",
                              url: "https://apps.apple.com/us/app/a-companion-for-swiftui/id1485436674?mt=12")
            }
            .font(.title)
            .padding()
            Text("Beginner:")
            Section {
                ButtonWebLink(title: "developer.apple.com SwiftUI tutorials",
                              url: "https://developer.apple.com/tutorials/swiftui/tutorials")
            }
            .font(.title)
            .padding()
        }
    }

    struct ButtonWebLink: View {
        let title: String
        let url: String
        var body: some View {
            Button(action: {
                UIApplication.shared.open(URL(string: self.url)!)
            }) {
                Text(title)
            }
        }
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
