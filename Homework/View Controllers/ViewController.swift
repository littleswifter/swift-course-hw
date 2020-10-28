//
//  ViewController.swift
//  Homework
//
//  Created by Alek Monstovich on 28.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        let username = loginField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let user = User(username: username, password: password)
        
        if let err = user.authenticate() {
            displayError(message: err)
        } else {
            // Succesfull login
            hideErrorLabel()
            transitionToHomeScreen()
        }
    }

    
    func transitionToHomeScreen() {
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.HomeViewController)
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }
    
    private func setupView() {
        hideErrorLabel()
    }
    
    private func displayError(message: String) {
        errorLabel.text = message
        errorLabel.layer.opacity = 1
    }
    
    private func hideErrorLabel() {
        errorLabel.layer.opacity = 0
    }

}

