//
//  NewToDoView.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/29/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
    
    var body: some View {
        VStack {
            Text("Task Title:")
            TextField("Enter the task description...", text: $title)
                .padding()
            Toggle(isOn: $isImportant) {
                            Text("Is it important?")
                    .padding()
                        }
            Button(action: {
                self.showNewTask = false
                self.addTask(title: self.title, isImportant: self.isImportant)
                
            }) {
                Text("Add")
                    .padding()
                
            }
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        
        }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true))
    }
}
