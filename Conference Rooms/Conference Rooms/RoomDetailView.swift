//
//  RoomDetailView.swift
//  Conference Rooms
//
//  Created by Giuseppe Diciolla on 17/04/21.
//

import SwiftUI

struct RoomDetailView: View {
    let room: Room
    
    var body: some View {
        Image(room.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

#if DEBUG
struct RoomDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetailView(room: testData[0])
    }
}
#endif
