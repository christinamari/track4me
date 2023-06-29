//
//  sleepTracker.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/27/23.
//

import SwiftUI

struct sleepTracker: View {
    // variables
    @State private var bedTime1 = ""
    @State private var bedTime2 = ""
    @State private var bedTime3 = ""
    @State private var bedTime4 = ""
    @State private var bedTime5 = ""
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("sleepTrackBackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .opacity(1.0)
                ZStack {
                    Image("journalOverlay")
                        .resizable()
                    Text("Sleep")
                        .font(.custom("Chewy-Regular", size: 70))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 575)
                    Text("Keep track of your sleep!")
                        .font(.custom("Chewy-Regular", size: 30))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 470)
                    VStack {
                        HStack {
                            Text("Monday")
                                .multilineTextAlignment(.center)
                                .font(.custom("Chewy-Regular", size: 30))
                                .padding(.leading)
                            TextField("Enter your bed time.", text: $bedTime1)
                                .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                                .background(.white)
                                .cornerRadius(20)
                            
                        }
                        .padding()
                        HStack {
                            Text("Tuesday")
                                .multilineTextAlignment(.center)
                                .font(.custom("Chewy-Regular", size: 30))
                                .padding(.leading)
                            TextField("Enter your bed time.", text: $bedTime2)
                                .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                                .background(.white)
                                .cornerRadius(20)
                            
                        }
                        HStack {
                            Text("Wednesday")
                                .multilineTextAlignment(.center)
                                .font(.custom("Chewy-Regular", size: 30))
                                .padding(.leading)
                            TextField("Enter your bed time.", text: $bedTime3)
                                .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                                .background(.white)
                                .cornerRadius(20)
                            
                        }
                        HStack {
                            Text("Thursday")
                                .multilineTextAlignment(.center)
                                .font(.custom("Chewy-Regular", size: 30))
                                .padding(.leading)
                            TextField("Enter your bed time.", text: $bedTime4)
                                .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                                .background(.white)
                                .cornerRadius(20)
                            
                        }
                        HStack {
                            Text("Friday")
                                .multilineTextAlignment(.center)
                                .font(.custom("Chewy-Regular", size: 30))
                                .padding(.leading)
                            TextField("Enter your bed time.", text: $bedTime5)
                                .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                                .background(.white)
                                .cornerRadius(20)
                        }
                      
                    }
                }
            }
        }
    }
}

struct sleepTracker_Previews: PreviewProvider {
    static var previews: some View {
        sleepTracker()
    }
}
