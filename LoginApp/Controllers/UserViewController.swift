//
//  BioViewController.swift
//  LoginApp
//
//  Created by Евгений Ефимов on 13.05.2023.
//

import UIKit

final class UserViewController: UIViewController {

    @IBOutlet weak var HeaderNavigationController: UINavigationItem!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departametLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    var profile: Person!
    
    private var user: String!
    
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
        
        loadDataAboutUser()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        
        bioVC.bio = profile.bio
    }

    private func loadDataAboutUser() {
        HeaderNavigationController.title = "\(profile.name) \(profile.surname)"
        nameLabel.text = profile.name
        surnameLabel.text = profile.surname
        companyLabel.text = profile.company
        departametLabel.text = profile.departament
        positionLabel.text = profile.position
    }
    
}
