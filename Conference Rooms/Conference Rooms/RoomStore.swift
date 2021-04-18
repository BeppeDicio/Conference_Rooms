//
//  RoomStore.swift
//  Conference Rooms
//
//  Created by Giuseppe Diciolla on 18/04/21.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    var rooms: [Room]{
        didSet { didChange.send() }
    }
    
    init(rooms: [Room] = []){
        self.rooms = rooms
    }
    
    var didChange = PassthroughSubject<Void, Never>()
}
