//
//  UserGroupsTableViewController.swift
//  Homework
//
//  Created by Alek Monstovich on 04.11.2020.
//

import UIKit

class UserGroupsTableViewController: UITableViewController {

    private let reuseIdentifier = Constants.Storyboard.UserGroupsCellIdentifier
    private let userGroups: UserGroupsViewModelProtocol = UserGroupsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userGroups.count()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! ProfileTableViewCell
        
        // populate cell with data
        cell.nameLabel.text = userGroups.name(for: indexPath.row)
        cell.thumbnailImageView.image = userGroups.photo(for: indexPath.row)
        print(indexPath.row)
        
        return cell
    }

}
