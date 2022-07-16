//
//  ContentView.swift
//  Shared
//
//  Created by Neal Watkins on 2022/7/16.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: Point_CounterDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(Point_CounterDocument()))
    }
}
