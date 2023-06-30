//
//  track4meApp.swift
//  track4me
//
//  Created by Christina Rioflorido on 6/26/23.
//

import SwiftUI

@main

struct track4meApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

