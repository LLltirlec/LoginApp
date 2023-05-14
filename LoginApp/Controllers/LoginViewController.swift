//
//  ViewController.swift
//  LoginApp
//
//  Created by Евгений Ефимов on 10.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let profile = User.testUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let welcomeVC = tabBar.viewControllers?[0] as? WelcomeViewController else { return }
        
        welcomeVC.profile = profile.person
        
        guard let navC = tabBar.viewControllers?[1] as? UINavigationController else { return }
        guard let userVC = navC.viewControllers[0] as? UserViewController else { return }
        
        userVC.profile = profile.person
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTextField.text == profile.userName,
              passwordTextField.text == profile.password else {
                showAlert(
                    withTitle: "Invalid login or password",
                    withMessage: "Please enter correct login and password",
                    textField: passwordTextField
                )
                return false
            }

            return true
    }
    
    @IBAction func forgotAction(_ sender: UIButton) {
        sender.tag == 0
           ? showAlert(
                withTitle: "Ooops!",
                withMessage: "Your username is \(profile.userName)"
            )
        : showAlert(
                withTitle: "Ooops!",
                withMessage: "Your password is \(profile.password)"
            )
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert( withTitle title: String, withMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController( title: title, message: message, preferredStyle: .alert )
        let okAction = UIAlertAction( title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

