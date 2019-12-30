//
//  MainView.swift
//  SwiftUITalk
//
//  Created by Robert Wallis on 12/30/19.
//  Copyright © 2019 Robert Wallis. All rights reserved.
//

import SwiftUI

struct MainView: View {

    typealias ViewFactory = () -> AnyView

    let slides:[ViewFactory] = [
    {AnyView(HStack{
        Image("HelloWorld")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        HelloView()
            .font(.title)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    })},
    {AnyView(HStack{
        Image("InputView")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        InputView()
            .font(.title)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    })},
    {AnyView(HStack{
        Image("OtherBindings")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        OtherBindings()
            .font(.title)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    })},
    ]
    @State var currentView = 0

    var body: some View {
        ZStack {
            slides[currentView]()
                .frame(minWidth: 768, maxWidth: .infinity,
                       minHeight: 512, maxHeight: .infinity)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button("back", action: {
                        self.currentView =
                            (self.currentView - 1) % self.slides.count
                    })
                    Button("next", action: {
                        self.currentView =
                            (self.currentView + 1) % self.slides.count
                    })
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


