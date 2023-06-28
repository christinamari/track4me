//
//  ContentView.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.cyan
            NavigationStack {
                Text("track4me")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                VStack {
                    // journal
                    NavigationLink(destination: journal()) {
                        Text("Journal")
                    }
                    .padding()
                    // to do list
                    NavigationLink(destination: toDoList()) {
                        Text("To Do List")
                    }
                    .padding()
                    // sleep tracker
                    NavigationLink(destination: sleepTracker()) {
                        Text("Sleep Tracker")
                    }
                    .padding()
                    // mood tracker
                    NavigationLink(destination: moodTracker()) {
                        Text("Mood Tracker")
                    }
                    .padding()
                        }
                    }
        }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
