//
//  GroupsViewModel.swift
//  Homework
//
//  Created by Alek Monstovich on 07.11.2020.
//

import UIKit

protocol GroupsViewModelProtocol {
    func count() -> Int
    func name(for id: Int) -> String?
    func avatar(for id: Int) -> UIImage?
}

class GroupsViewModel: GroupsViewModelProtocol {
    private let groups: [Group] = Group.generateGroups()
    
    func count() -> Int {
        return groups.count
    }
    
    func name(for id: Int) -> String? {
        guard id >= 0 && id < groups.count else { return nil }
        return groups[id].name
    }
    
    func avatar(for id: Int) -> UIImage? {
        guard id >= 0 && id < groups.count else { return nil }
        return UIImage(named: groups[id].avatar)
    }
}
