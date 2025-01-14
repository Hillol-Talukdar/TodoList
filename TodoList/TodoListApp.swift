//
//  TodoListApp.swift
//  TodoList
//
//  Created by Hillol Talukdar on 31/12/24.
//

import SwiftUI

@main
struct TodoListApp: App {
    @StateObject var listVIewModel : ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listVIewModel)
        }
    }
}
