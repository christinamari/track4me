//
//  journal.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/28/23.
//

import SwiftUI

struct journal: View {
    @State private var thoughts = ""
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("journalBackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .opacity(1.0)
                ZStack {
                    Image("journalOverlay")
                        .resizable()
                    Text("Journal")
                        .font(.custom("Chewy-Regular", size: 70))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 575)
                    Text("Let it out!")
                        .font(.custom("Chewy-Regular", size: 35))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 470)
                }
                TextField("Write down your thoughts here...", text: $thoughts)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.black)
                    .background(.white)
            }
        }
    }
}

struct journal_Previews: PreviewProvider {
    static var previews: some View {
        journal()
    }
}
