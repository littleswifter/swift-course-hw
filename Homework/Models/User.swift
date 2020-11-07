//
//  User.swift
//  Homework
//
//  Created by Alek Monstovich on 28.10.2020.
//

import Foundation

struct User {
    var name = ""
    var avatar = ""
    
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
    
    static func generateCurrentUserFriends() -> [User] {
        return [
            User(name: "Fili", avatar: "fili"),
            User(name: "Kili", avatar: "kili"),
            User(name: "Gandalf", avatar: "gandalf"),
            User(name: "Bilbo", avatar: "bilbo"),
            User(name: "Dwalin", avatar: "dwalin"),
            User(name: "Balin", avatar: "balin")
        ]
    }
    
    static func currentUser() -> User {
        return User(name: "Dummy")
    }
}
