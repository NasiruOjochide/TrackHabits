//
//  NewActivity.swift
//  TrackHabits
//
//  Created by Danjuma Nasiru on 25/01/2023.
//

import SwiftUI

struct NewActivity: View {
    
    var activities : Activities
    @State private var activityTitle = ""
    @State private var activityDesc = ""
    @State private var streak = 0
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
        VStack{
            Form{
                TextField("Enter Activity title", text: $activityTitle)
                TextField("Short Description", text: $activityDesc)
                    
                
                
            }.toolbar{
                Button{
                    let newEvent = Activity(title: activityTitle, description: activityDesc, streak: streak)
                    activities.items.append(newEvent)
                    
                    dismiss()
                } label: {
                    Text("Save")
                }
            }
            
            
            Spacer()
            
        }.onAppear(perform: {
            UITableView.appearance().backgroundColor = UIColor(.clear)
        })
        }
    }
}

struct NewActivity_Previews: PreviewProvider {
//    var activity = Activity(title: "Daily Run", description: "I need to run a total of 20km daily and know the total amount of days i've completed the challenge", completionCount: 0)
    static var previews: some View {
        NewActivity(activities: Activities())
    }
}
