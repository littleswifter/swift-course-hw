//
//  UserViewModel.swift
//  Homework
//
//  Created by Alek Monstovich on 02.11.2020.
//

import UIKit

protocol FriendsViewModelProtocol {
    func count() -> Int
    func name(for index: Int) -> String?
    func avatar(for index: Int) -> UIImage?
}

class FriendsViewModel: FriendsViewModelProtocol {
    private let friends: [User] = User.generateCurrentUserFriends()
    
    func count() -> Int {
        friends.count
    }
    
    func name(for index: Int) -> String? {
        guard index >= 0 && index < friends.count else { return nil }
        return friends[index].name
    }
    
    func avatar(for index: Int) -> UIImage? {
        guard index >= 0 && index < friends.count else { return nil }
        return UIImage(named: friends[index].avatar)
    }
}
