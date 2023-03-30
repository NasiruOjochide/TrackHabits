//
//  Activity.swift
//  TrackHabits
//
//  Created by Danjuma Nasiru on 25/01/2023.
//

import Foundation

struct Activity : Equatable, Identifiable, Codable{
    var id = UUID()
    var title : String
    var description : String
    var streak : Int
}
