//
//  TLButton.swift
//  Todo-App
//
//  Created by Piyush saini on 19/06/24.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
              action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .bold()
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "button", background: .gray) {
//        action
    }
}
