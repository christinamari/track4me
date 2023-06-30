//
//  toDoList.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/28/23.
//

import SwiftUI

struct toDoList: View {
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct toDoList_Previews: PreviewProvider {
    static var previews: some View {
        toDoList()
    }
}
