//
//  moodTracker.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/28/23.
//

import SwiftUI

struct moodTracker: View {
    @State private var message = "Which represents your mood best right now?"
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("moodTrackBackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .opacity(1.0)
                ZStack {
                    Image("journalOverlay")
                        .resizable()
                    Text("Mood")
                        .font(.custom("Chewy-Regular", size: 70))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 575)
                    Text("Have a great day!")
                        .font(.custom("Chewy-Regular", size: 30))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 470)
                }
                VStack {
                    HStack(alignment: .top) {
                        
                        Button("😊") {
                            message = "Continue having an amazing week!"
                        }
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .background(.white)
                        .cornerRadius(60)
                        .font(.custom("Kollektif", size: 100))
                        .multilineTextAlignment(.center)
                        Button("😐") {
                            message = "You'll have an amazing day soon!"
                        }
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .background(.white)
                        .cornerRadius(60)
                        .font(.custom("Kollektif", size: 100))
                        .multilineTextAlignment(.center)
                        Button("😭") {
                            message = "Oh no :( I hope everything turns around!"
                        }
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .background(.white)
                        .cornerRadius(60)
                        .font(.custom("Kollektif", size: 100))
                        .multilineTextAlignment(.center)
                    }
                    .padding(.top, 100.0)
                    Text(message)
                        .padding(.top)
                        .font(.custom("Chewy-Regular", size: 40))
                        .multilineTextAlignment(.center)
                    Text("Resources.")
                          .font(.custom("Chewy-Regular", size: 30))
                          .padding()
                      
                      Link("Ways to Improve Your Mood.", destination: URL(string: "https://www.titlemax.com/discovery-center/lifestyle/scientifically-proven-ways-improve-your-mood/")!)
                          .foregroundColor(.black)
                          .font(.custom("Kollektif", size: 20))
                }
            }
        }
    }
}

struct moodTracker_Previews: PreviewProvider {
    static var previews: some View {
        moodTracker()
    }
}
