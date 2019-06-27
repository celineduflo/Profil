//
//  UserViewController.swift
//  Profil
//
//  Created by Céline Duflo on 26/06/2019.
//  Copyright © 2019 Céline Duflo. All rights reserved.
//

import UIKit
import Foundation


struct User {
    var firstName: String
    var lastName: String
    var age: Int
    var isTrainer: Bool
    var avatar: UIImage?
    
    init(firstName: String, lastName: String, age: Int, isTrainer: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.isTrainer = isTrainer
    }
    
    func describe() {
        print("Bonjour je m'appelle \(firstName) \(lastName), jai \(age) ans et je suis \(isTrainer ? "formateur" : "apprenant") ")
    }
    
}

var allUsers = [User]()
