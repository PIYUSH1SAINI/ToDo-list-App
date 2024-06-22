//
//  RegisterView.swift
//  Todo-App
//
//  Created by Piyush saini on 19/06/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start Organizing today", angle: -15, background: .purple)
            
            Image("register")
                .resizable()
                .scaledToFit()
                .frame(height: 350)
                .offset(y: -250)
        }
        .offset(y: 120)
        
        Form{
            TextField("Username", text: $viewModel.name)
                .autocorrectionDisabled()
                .autocapitalization(.none)
            
            TextField("Email ID", text: $viewModel.email)
                .autocapitalization(.none)
            
            SecureField("Password", text: $viewModel.password)
            
            TLButton(title: "Register", background: .green){
                viewModel.register()
            }
        }
        .offset(y: -150)
        .frame(height: 300)
        Spacer()
    }
}

#Preview {
    RegisterView()
}
