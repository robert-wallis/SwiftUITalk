//
//  CombineStore.swift
//  SwiftUI Talk
//
//  Created by Robert Wallis on 1/2/20.
//  Copyright © 2020 Robert Wallis. All rights reserved.
//

import SwiftUI
import Combine


class CombineUser: ObservableObject {
    @Published var name: String = ""
    @Published var check = false

    private var subs = Set<AnyCancellable>()

    init() {
        $name
            // .print() helpful for debugging
            .sink { newName in
                self.check = newName.count > 0
            }
            .store(in: &subs)
    }
}


struct CombineStoreView: View {

    @ObservedObject var user = CombineUser()

    var body: some View {
        VStack {
            HStack {
                Text("Hello, \(user.name)")
                    .font(.largeTitle)
                user.check ? Text("✅") : nil
            }.padding()
            UserEditorView(user: user)
        }
    }
}


struct UserEditorView: View {
    @ObservedObject var user: CombineUser
    var body: some View {
        VStack {
            TextField("name", text: $user.name)
                .font(.largeTitle)
        }
    }
}

struct CombineStoreView_Previews: PreviewProvider {
    static var previews: some View {
        CombineStoreView()
    }
}
