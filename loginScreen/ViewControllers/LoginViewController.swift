//
//  ViewController.swift
//  loginScreen
//
//  Created by Ilya Sokolov on 12.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let userName = "1"
    private let userPassword = "1"
    
    // MARK: - Public methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.welcomePerson = userName
        }
    }
    
    // MARK: - IBAction
    @IBAction func forgotNameButton() {
        showAlert(title: "Your name:", message: userName)
        
    }
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Your password:", message: userPassword)
    }
    
    @IBAction func logInButton() {
        if nameTextField.text != userName
            || passwordTextField.text != userPassword {
            showAlert(title: "Incorrect name or password",
                      message: "Please use help")
            passwordTextField.text = ""
        }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - Private Methods
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}

// MARK: - Extension
extension LoginViewController {
    
    private func showAlert(title: String, message: String  ){
        let passAlert = UIAlertController(title: title,
                                          message: message,
                                          preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Thank's", style: .default)
        passAlert.addAction(okAction)
        present(passAlert, animated: true)
    }
    //Убираем клавиатуру по тапу на экран
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

