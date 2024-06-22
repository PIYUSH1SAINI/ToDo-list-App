//
//  HeaderView.swift
//  Todo-App
//
//  Created by Piyush saini on 19/06/24.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String
    var subtitle: String
    var angle: Double
    var background: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .frame(width: UIScreen.main.bounds.width * 3, height: 350)
                .rotationEffect(Angle(degrees: angle))
            
            VStack{
                VStack {
                    Text(title)
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.top, 130)
                    
                    Text(subtitle)
                        .font(.title2)
                        .foregroundColor(.white)
                }
            }
        }
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
