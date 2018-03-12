//
//  LoginViewController.swift
//  LoginScreen
//
//  Created by Jacob Metcalf on 3/12/18.
//  Copyright © 2018 JfMetcalf. All rights reserved.
//

import UIKit

enum ButtonState {
    case selected
    case notSelected
}

class LoginViewController: UIViewController {

    // MARK: - Properties
    var buttonState = ButtonState.notSelected
    
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var aboutMeLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    // MARK: - Actions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        updateViews()
    }
    
    func setUpUI() {
        // This function is used to match our Sketch Design
        headerImageView.image = #imageLiteral(resourceName: "2")
        headerImageView.contentMode = .scaleAspectFill
        profileImageView.image = #imageLiteral(resourceName: "Header")
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.layer.frame.height / 2
        profileImageView.layer.borderColor = UIColor.white.cgColor
        profileImageView.layer.borderWidth = 5
        
        // buttonUI
        loginButton.layer.cornerRadius = 10
        loginButton.clipsToBounds = true
        loginButton.backgroundColor = UIColor.primaryBlue
        loginButton.layer.borderColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        loginButton.layer.borderWidth = 3
        loginButton.setTitleColor(.white, for: .normal)
    }
    
    func updateViews() {
        switch buttonState {
        case .selected:
            buttonState = .notSelected
            loginButton.setTitle("Login", for: .normal)
        case .notSelected:
            buttonState = .selected
            loginButton.setTitle("Update", for: .normal)
        }
    }
}
