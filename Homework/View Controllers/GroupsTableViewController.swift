//
//  GroupsTableViewController.swift
//  Homework
//
//  Created by Alek Monstovich on 04.11.2020.
//

import UIKit

class GroupsTableViewController: UITableViewController {

    private let reuseIdentifier = Constants.Storyboard.GroupsCellIdentifier
    private let groups: GroupsViewModelProtocol = GroupsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! ProfileTableViewCell
        
        // populate cell with data
        cell.nameLabel.text = groups.name(for: indexPath.row)
        cell.thumbnailImageView.image = groups.avatar(for: indexPath.row)
        
        return cell
    }

}
