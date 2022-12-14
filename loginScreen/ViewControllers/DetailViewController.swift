//
//  DetailViewController.swift
//  loginScreen
//
//  Created by Ilya Sokolov on 17.08.2022.
//

import UIKit

final class DetailViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var sureNameLable: UILabel!
    @IBOutlet weak var ageLable: UILabel!
    
    @IBOutlet weak var hobbyTextView: UITextView!
    // MARK: - Visual Components
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInformation()
    }
    // MARK: - Private Methods
   private func setupInformation() {
        nameLable.text = "My name is \(User.getUser().privateInformation.name)"
        sureNameLable.text = "My surname is \(User.getUser().privateInformation.surname) "
        hobbyTextView.text = "I like \(User.getUser().privateInformation.hobbis)"
        ageLable.text = "I am \(String(User.getUser().privateInformation.age)) years old"
        avatarImageView.image = User.getUser().privateInformation.image
        
    }
}
