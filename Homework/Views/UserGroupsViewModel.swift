//
//  UserGroupsViewModel.swift
//  Homework
//
//  Created by Alek Monstovich on 07.11.2020.
//

import UIKit

protocol UserGroupsViewModelProtocol {
    func count() -> Int
    func name(for id: Int) -> String?
    func photo(for id: Int) -> UIImage?
}

class UserGroupsViewModel: UserGroupsViewModelProtocol {
    private var groups: [Group] = Group.generateUserGroups(for: User.currentUser())
    
    func count() -> Int {
        return groups.count
    }
    
    func name(for id: Int) -> String? {
        guard id >= 0 && id < groups.count else { return nil }
        return groups[id].name
    }
    
    func photo(for id: Int) -> UIImage? {
        guard id >= 0 && id < groups.count else { return nil }
        return UIImage(named: groups[id].avatar)
    }
}
