//
//  User.swift
//  Todo-App
//
//  Created by Piyush saini on 19/06/24.
//

import Foundation


struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
