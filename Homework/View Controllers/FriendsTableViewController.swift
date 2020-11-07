//
//  FriendsTableViewController.swift
//  Homework
//
//  Created by Alek Monstovich on 28.10.2020.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    private let reuseIdentifier = Constants.Storyboard.FriendCellIdentifier
    private let friends: FriendsViewModelProtocol = FriendsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! ProfileTableViewCell

        cell.nameLabel.text = friends.name(for: indexPath.row)
        cell.thumbnailImageView.image = friends.avatar(for: indexPath.row)

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.Storyboard.FriendPhotoSegue {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let destinationController = segue.destination as! FriendCollectionViewController
            destinationController.profileID = indexPath.row
        }
    }

}
