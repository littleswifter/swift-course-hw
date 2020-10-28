//
//  User.swift
//  Homework
//
//  Created by Alek Monstovich on 28.10.2020.
//

import Foundation

struct User {
    var username = ""
    var password = ""
    
    func authenticate() -> String? {
        guard username != "" && password != "" else {
            return User.UserError.WrongCredentials.rawValue
        }
        return nil
    }
    
    enum UserError: String {
        case WrongCredentials = "Wrong credentials provided"
    }
}
