//
//  Group.swift
//  Homework
//
//  Created by Alek Monstovich on 04.11.2020.
//

import Foundation

struct Group {
    var name = ""
    var avatar = ""
    
    static func generateUserGroups(for user: User) -> [Group] {
        return [
            Group(name: "Unexpected Party", avatar: "party"),
            Group(name: "Over Hill and Under Hill", avatar: "hills")
        ]
    }
    
    static func generateGroups() -> [Group] {
        return [
            Group(name: "Riddles in the Dark", avatar: "riddles"),
            Group(name: "Flies and Spiders", avatar: "spiders")
        ]
    }
}
