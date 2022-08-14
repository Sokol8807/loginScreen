//
//  WelcomeViewController.swift
//  loginScreen
//
//  Created by Ilya Sokolov on 12.08.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet var welcomeLable: UILabel!
    
    // MARK: - Private Properties
    var welcomePerson = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLable.text = "Welcome, \(welcomePerson)"
    }
    
    // MARK: - IBAction
    @IBAction func logOutButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
