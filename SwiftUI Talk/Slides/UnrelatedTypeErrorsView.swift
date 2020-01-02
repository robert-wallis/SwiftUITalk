//
//  UnrelatedTypeErrorsView.swift
//  SwiftUI Talk
//
//  Created by Robert Wallis on 1/2/20.
//  Copyright © 2020 Robert Wallis. All rights reserved.
//

import SwiftUI

struct UnrelatedTypeErrorsView: View {
    var body: some View {
        VStack(spacing: 4) {
            Text("One")
            Text("Two")
            Text("Three")
            Text("Four")
            Text("Five")
            Text("Six")
            Text("Seven")
            Text("Eight")
            Text("Nine")
            Text("Ten")
//            Text("Eleven")
        }
    }
}

struct UnrelatedTypeErrorsView_Previews: PreviewProvider {
    static var previews: some View {
        UnrelatedTypeErrorsView()
    }
}
