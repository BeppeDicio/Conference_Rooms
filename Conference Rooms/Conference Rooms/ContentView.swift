//
//  ContentView.swift
//  Conference Rooms
//
//  Created by Giuseppe Diciolla on 16/04/21.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []
    
    
    var body: some View {
        NavigationView {
            List(rooms) { room in
                NavigationLink(destination: Text(room.name)) {
                    Image(room.thumbnailName)
                        .cornerRadius(8)


                    VStack(alignment: .leading) {
                        Text(room.name)
                        Text("\(room.capacity) people")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle(Text("Meeting Rooms"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
#endif
