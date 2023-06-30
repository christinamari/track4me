//
//  toDoList.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/28/23.
//

import SwiftUI


struct toDoList: View {
    @State private var showNewTask = false
    @State var toDoItems: [ToDoItem] = []

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
            
            List {
                    ForEach (toDoItems) { toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                    }
            }
            .listStyle(.plain)
            .animation(.easeOut, value: showNewTask)
        }
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
}

struct toDoList_Previews: PreviewProvider {
    static var previews: some View {
        toDoList()
    }
}
