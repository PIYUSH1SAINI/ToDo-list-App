//
//  LoginView.swift
//  Todo-App
//
//  Created by Piyush saini on 19/06/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                VStack {
                    HeaderView(title: "To-Do List", subtitle: "Get things done", angle: 15, background: .orange)
                    
                    Image("login")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .offset(y: -270)
                }
                .offset(y: 100)
                
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email ID", text: $viewModel.email)
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                    
                    TLButton(title: "Login", background: .blue){
                        viewModel.login()
                    }
                }
                .frame(height: 250)
                .offset(y: -170)
                
                
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .offset(y: -130)
                .padding()
            }
        }
        Spacer()
    }
}

#Preview {
    LoginView()
}
