//
//  UserViewController.swift
//  LoginApp
//
//  Created by Евгений Ефимов on 10.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    var profile: Person!
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        greetingLabel.text = "Hi, \(profile.name)!"
    }
    
}
