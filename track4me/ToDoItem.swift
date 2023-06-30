//
//  ToDoItem.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/29/23.
//

import Foundation

class ToDoItem {
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}
