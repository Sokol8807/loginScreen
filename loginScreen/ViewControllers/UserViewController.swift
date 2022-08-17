//
//  UserViewController.swift
//  loginScreen
//
//  Created by Ilya Sokolov on 16.08.2022.
//

import UIKit

class UserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        navigationItem.title = User.getUser().userName
    }
    

    @IBAction func unwindSegueUserVC(_ segue: UIStoryboardSegue) {
    
    }

}
