//
//  UserViewController.swift
//  LoginApp
//
//  Created by Евгений Ефимов on 10.05.2023.
//

import UIKit

final class UserViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Hi, \(user ?? "Guest")!"
    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    
}
