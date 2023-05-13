//
//  BioViewController.swift
//  LoginApp
//
//  Created by Евгений Ефимов on 13.05.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet weak var bioLabel: UILabel!
    
    var bio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bioLabel.text = "\(bio ?? "Content cannot be loaded")"
    }

}
