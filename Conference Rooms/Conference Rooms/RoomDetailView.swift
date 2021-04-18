//
//  RoomDetailView.swift
//  Conference Rooms
//
//  Created by Giuseppe Diciolla on 17/04/21.
//

import SwiftUI

struct RoomDetailView: View {
    let room: Room
    @State private var zoomed = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(room.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{ self.zoomed.toggle() }
                    
                }
                .navigationBarTitle(Text(room.name), displayMode: .inline)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            
            if room.hasVideo && !zoomed {
                Image(systemName: "video.fill")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .transition(.move(edge: .leading))
            }
        }
    }
}

#if DEBUG
struct RoomDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {RoomDetailView(room: testData[0])}
            NavigationView {RoomDetailView(room: testData[1])}
        }
    }
}
#endif
