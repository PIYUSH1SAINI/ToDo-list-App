//
//  ContentView.swift
//  Todo-App
//
//  Created by Piyush saini on 19/06/24.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            TabView(){
                ToDoListView(userId: viewModel.currentUserId).tabItem { Label("Home", systemImage: "house")}
                
                ProfileView().tabItem { Label("Home", systemImage: "person.circle")}
            }
        }
        else{
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
