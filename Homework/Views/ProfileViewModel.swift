//
//  ProfileViewModel.swift
//  Homework
//
//  Created by Alek Monstovich on 07.11.2020.
//

import UIKit

protocol ProfileViewModelProtocol {
    func photo(for id: Int) -> UIImage?
}

class ProfileViewModel: ProfileViewModelProtocol {
    
    private let friends: [User] = User.generateCurrentUserFriends()
    
    func photo(for id: Int) -> UIImage? {
        guard id >= 0 && id < friends.count else { return nil }
        return UIImage(named: friends[id].avatar)
    }
}
