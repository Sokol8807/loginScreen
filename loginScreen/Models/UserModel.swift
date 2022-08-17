//
//  UserModel.swift
//  loginScreen
//
//  Created by Ilya Sokolov on 17.08.2022.
//

import Foundation

struct User {
    let userName: String
    let userPassword: String
    let privateInformation: Person
    
    static func getUser() -> User {
        User(userName: "2", userPassword: "2", privateInformation: getPerson() )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let hobbis: String

}


func getPerson() -> Person {
    Person(name: "Ilay", surname: "Sokolov", age: 33, hobbis: "iOs Develope")
}
