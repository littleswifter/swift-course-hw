//
//  FriendsTableViewController.swift
//  Homework
//
//  Created by Alek Monstovich on 28.10.2020.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    let friends = [
        "Fili",
        "Kili",
        "Bilbo"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.FriendCellIdentifier, for: indexPath)

        cell.textLabel?.text = friends[indexPath.row]

        return cell
    }

}
