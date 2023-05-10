//
//  ViewController.swift
//  LoginApp
//
//  Created by Евгений Ефимов on 10.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    private var userName = "User"
    private var password = "Password"
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userVC = segue.destination as? UserViewController else { return }
        userVC.user = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTextField.text == userName,
              passwordTextField.text == password else {
                showAlert(
                    withTitle: "Invalid login or password",
                    withMessage: "Please enter correct login and password"
                )
                return false
            }

            return true
    }
    
    @IBAction func forgotAction(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            showAlert(
                withTitle: "Ooops!",
                withMessage: "Your username is \(userName)"
            )
        default:
            showAlert(
                withTitle: "Ooops!",
                withMessage: "Your password is \(password)"
            )
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(
        withTitle title: String,
        withMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        ) { _ in self.passwordTextField.text = "" }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

