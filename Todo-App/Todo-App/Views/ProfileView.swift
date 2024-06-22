//
//  ProfileView.swift
//  Todo-App
//
//  Created by Piyush saini on 19/06/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user{
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue)
                        .frame(width: 125, height: 125)
                    
                    List{
                        HStack{
                            Text("Name : ")
                                .bold()
                            Spacer()
                            Text(user.name)
                                .foregroundColor(.secondary)
                        }
                        HStack{
                            Text("Email : ")
                                .bold()
                            Spacer()
                            Text(user.email)
                                .foregroundColor(.secondary)
                        }
                        HStack{
                            Text("Member Since : ")
                                .bold()
                            Spacer()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                                .foregroundColor(.secondary)
                        }
                    }
                    Spacer()
                }else{
                    Text("Loading profile....")
                }
            }
            .navigationTitle("Profile")
            .toolbar{
                Button{
                    viewModel.logOut()
                }label: {
                    Text("Log Out")
                }
                .tint(.red)
            }
        }
        .onAppear(){
            viewModel.fetchUser()
        }
    }
}

#Preview {
    ProfileView()
}
