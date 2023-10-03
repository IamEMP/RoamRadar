//
//  ContentView.swift
//  RoamRadar
//
//  Created by Ethan Phillips on 10/1/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var destinations: [Destination]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(destinations) { destination in
                    VStack(alignment: .leading)  {
                        Text(destination.name)
                            .font(.headline)
                        
                        Text(destination.date.formatted(date: .long, time: .shortened))
                    }
                }
            }
            .navigationTitle("Roam Radar")
            .toolbar {
                Button("Add Samples", action: addSamples)
            }
        }
    }
    func addSamples() {
        let rome = Destination(name: "Rome")
        let canada = Destination(name: "Canada")
        let grandCanyon = Destination(name: "Grand Canyon")
        
        modelContext.insert(rome)
        modelContext.insert(canada)
        modelContext.insert(grandCanyon)
    }
}

#Preview {
    ContentView()
}
