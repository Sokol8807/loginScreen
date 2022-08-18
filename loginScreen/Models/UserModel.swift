//
//  UserModel.swift
//  loginScreen
//
//  Created by Ilya Sokolov on 17.08.2022.
//

import Foundation
import UIKit

struct User {
    let userName: String
    let userPassword: String
    let privateInformation: Person
    
    static func getUser() -> User {
        User(userName: "Sokol", userPassword: "1", privateInformation: getPerson() )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let hobbis: String
    let image:  UIImage
    
}

func getPerson() -> Person {
    Person(name: "Ilay", surname: "Sokolov", age: 33, hobbis: "iOs Developing , landscape photography, snowboarding ", image: UIImage(named: "sokolov")!)
}
