//
//  ContentView.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                ZStack {
                    Image("background1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .opacity(1.0)
                    
                    VStack {
                        Text("track4me")
                            .font(.custom("Chewy-Regular", size: 50))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        // journal
                        NavigationLink(destination: journal()) {
                            Text("Journal")
                                .font(.custom("Kollektif", size: 30))
                                .foregroundStyle(.black)
                        }
                        .padding()
                        // to do list
                        NavigationLink(destination: toDoList()) {
                            Text("To Do List")
                            .font(.custom("Kollektif", size: 30))
                            .foregroundStyle(.black)
                        }
                        .padding()
                        // sleep tracker
                        NavigationLink(destination: sleepTracker()) {
                            Text("Sleep Tracker")
                            .font(.custom("Kollektif", size: 30))
                            .foregroundStyle(.black)
                        }
                        .padding()
                        // mood tracker
                        NavigationLink(destination: moodTracker()) {
                            Text("Mood Tracker")
                            .font(.custom("Kollektif", size: 30))
                            .foregroundStyle(.black)
                        }
                        .padding()
                    }
                    
                }
            }
        }
    }
}

/*
VStack {
    NavigationStack {
        Text("track4me")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
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
*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
