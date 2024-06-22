//
//  Todo_AppApp.swift
//  Todo-App
//
//  Created by Piyush saini on 19/06/24.
//

import SwiftUI
import FirebaseCore

@main
struct Todo_AppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
