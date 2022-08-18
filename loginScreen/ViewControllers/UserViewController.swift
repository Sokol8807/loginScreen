//
//  UserViewController.swift
//  loginScreen
//
//  Created by Ilya Sokolov on 16.08.2022.
//

import UIKit

final class UserViewController: UIViewController {
    // MARK: - Visual Components
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        navigationItem.title = User.getUser().userName
    }
}
