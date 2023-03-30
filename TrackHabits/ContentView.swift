//
//  ContentView.swift
//  TrackHabits
//
//  Created by Danjuma Nasiru on 25/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var newSheet = false
    @StateObject var activities = Activities()
    var body: some View {
        NavigationView{
            VStack{
                
                //Text("Track your Activities")
                //Spacer()
                List(){
                    ForEach(activities.items){item in
                        NavigationLink{
                            ActivityDetails()
                        } label: {
                            HStack{
                                Text(item.title)
                                Text(item.streak, format: .number)
                            }
                        }.padding(.vertical)
                        
                        
                    }.listRowBackground(LinearGradient(colors: [.blue.opacity(0.7), .blue.opacity(0.1)], startPoint: .leading, endPoint: .bottomTrailing))
                }.padding(.vertical, 50).frame(height: 400).listStyle(.insetGrouped)
                
                Spacer()
                Text("zjhgfzd")
                
            }
            .navigationTitle("Track your activity")
            .navigationBarTitleDisplayMode(.inline)
            .background(.blue.opacity(0.3))
            
        }
        
    }
    
    init(){
        UITableView.appearance().backgroundColor = UIColor(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
