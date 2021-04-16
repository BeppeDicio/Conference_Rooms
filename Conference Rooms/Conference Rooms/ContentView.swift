//
//  ContentView.swift
//  Conference Rooms
//
//  Created by Giuseppe Diciolla on 16/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Image(systemName: "photo")
            VStack(alignment: .leading) {
                Text("Rooms")
                Text("20 people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
