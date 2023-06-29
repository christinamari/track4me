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
                                .padding(.bottom)
                                .padding(.top)
                                .padding(.horizontal, 90)
                                .background(CustomColor.lightPinkColor)
                                .cornerRadius(20)
                                
                        }
                        .padding()
                        // to do list
                        NavigationLink(destination: toDoList()) {
                            Text("To Do List")
                            .font(.custom("Kollektif", size: 30))
                            .foregroundStyle(.black)
                            .padding(.bottom)
                            .padding(.top)
                            .padding(.horizontal, 90)
                            .background(CustomColor.lightPinkColor)
                            .cornerRadius(20)
                            
                        }
                        .padding()
                        // sleep tracker
                        NavigationLink(destination: sleepTracker()) {
                            Text("Sleep")
                            .font(.custom("Kollektif", size: 30))
                            .foregroundStyle(.black)
                            .padding(.bottom)
                            .padding(.top)
                            .padding(.horizontal, 90)
                            .background(CustomColor.lightPinkColor)
                            .cornerRadius(20)
                        }
                        .padding()
                        // mood tracker
                        NavigationLink(destination: moodTracker()) {
                            Text("Mood")
                            .font(.custom("Kollektif", size: 30))
                            .foregroundStyle(.black)
                            .padding(.bottom)
                            .padding(.top)
                            .padding(.horizontal, 90)
                            .background(CustomColor.lightPinkColor)
                            .cornerRadius(20)
                        }
                        .padding()
                    }
                    
                }
            }
        }
    }
}

struct CustomColor {
    static let lightPinkColor = Color("Color1")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
