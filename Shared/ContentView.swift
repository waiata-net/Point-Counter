//
//  ContentView.swift
//  Shared
//
//  Created by Neal Watkins on 2022/7/16.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: GameDocument

    var body: some View {
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(GameDocument()))
    }
}
