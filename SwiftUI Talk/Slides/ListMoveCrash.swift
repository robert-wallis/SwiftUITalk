//
//  ListMoveCrash.swift
//  SwiftUI Talk
//
//  Created by Robert Wallis on 1/2/20.
//  Copyright © 2020 Robert Wallis. All rights reserved.
//

import SwiftUI

struct ListMoveCrash: View {
    @State var top = ["Robert", "Phil"]
    @State var people = ["Megha", "Eduardo", "Batch", "David", "Matt"]
    var body: some View {
        VStack {
            Text("Coolest People in the Room")
            List {
                Section {
                    listPeople(people: top)
                }
                listPeople(people: people)
            }.listStyle(GroupedListStyle())
        }
    }

    func listPeople(people: [String]) -> some View {
        ForEach(people, id: \.self) { person in
            Text(person)
        }.onMove(perform: { index, id in
            print("moved \(index), \(id)")
        })
    }
}

struct ListMoveCrash_Previews: PreviewProvider {
    static var previews: some View {
        ListMoveCrash()
            .previewLayout(.fixed(width: 350, height: 512))
    }
}

// MARK: Simple Version

//var body: some View {
//    VStack {
//        Text("Coolest People in the Room")
//        List {
//            ForEach(people, id: \.self) { person in
//                Text(person)
//            }.onMove(perform: { index, id in
//                print("moved \(index), \(id)")
//            })
//        }
//    }
//}


// MARK: Crashy Version
//@State var top = ["Robert", "Phil"]
//@State var people = ["Megha", "Eduardo", "Batch", "David", "Matt"]
//var body: some View {
//    VStack {
//        Text("Coolest People in the Room")
//        List {
//            Section {
//                listPeople(people: top)
//            }
//            listPeople(people: people)
//        }.listStyle(GroupedListStyle())
//    }
//}
//
//func listPeople(people: [String]) -> some View {
//    ForEach(people, id: \.self) { person in
//        Text(person)
//    }.onMove(perform: { index, id in
//        print("moved \(index), \(id)")
//    })
//}
