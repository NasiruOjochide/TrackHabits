//
//  Activities.swift
//  TrackHabits
//
//  Created by Danjuma Nasiru on 25/01/2023.
//

import Foundation

class Activities : ObservableObject {
    @Published var items :[Activity] {
        didSet{
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(items){
                UserDefaults.standard.set(encoded, forKey: "items")
            }
        }
    }
    
    init(){
        if let data = UserDefaults.standard.data(forKey: "items"){
            if let decoded = try? JSONDecoder().decode([Activity].self, from: data){
                items = decoded
                return
            }
        }
        items = []
    }
}
