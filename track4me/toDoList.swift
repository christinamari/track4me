//
//  toDoList.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/28/23.
//

import SwiftUI


struct toDoList: View {
    @Environment(\.managedObjectContext) var context
    
    @State private var showNewTask = false
    @FetchRequest(
        entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                VStack {
                    HStack {
                        Text("To Do List")
                            .font(.custom("Chewy-Regular", size: 70))
                            .fontWeight(.black)
                        Spacer()
                        Button(action: {
                            self.showNewTask = true
                        }) {
                            Text("+")
                                .font(.custom("Chewy-Regular", size: 70))
                                .foregroundColor(.pink)
                        }
                    }
                    .padding()
                    Spacer()
                    
                    List {
                        ForEach (toDoItems) { toDoItem in
                            if toDoItem.isImportant == true {
                                if toDoItem.isImportant == true {
                                    Text("‼️" + (toDoItem.title ?? "No title"))
                                } else {
                                    Text(toDoItem.title ?? "No title")
                                }
                            }
                        }
                        .onDelete(perform: deleteTask)
                    }
                    .listStyle(.plain)
                    .animation(.easeOut, value: showNewTask)
                    
                    
                    if showNewTask {
                        NewToDoView(title: "", isImportant: false, showNewTask: $showNewTask)
                    }
                }
            }
        }
    }
        private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)
                
                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        }
        
        struct toDoList_Previews: PreviewProvider {
            static var previews: some View {
                toDoList()
            }
        }
    }

