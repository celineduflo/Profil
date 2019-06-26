//
//  ViewController.swift
//  Profil
//
//  Created by Céline Duflo on 25/06/2019.
//  Copyright © 2019 Céline Duflo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var currentUser: User
    var allUsers = [User]()
    
    @IBOutlet weak var ageVal: UILabel!
    @IBOutlet weak var ageSliderValue: UISlider!
    @IBOutlet weak var switchState: UISwitch!
    @IBOutlet weak var firstNAme: UITextField!
    @IBOutlet weak var lastNAme: UITextField!
    
    
    @IBAction func ageSlider(_ sender: Any) {
        updateAge()
    }
    
    @IBAction func switchAction(_ sender: Any) {

    }
    
    @IBAction func createUser(_ sender: Any) {
        let currentUser = User(firstName:firstNAme.text!, lastName: lastNAme.text!, age:Int(ageSliderValue.value), isTrainer: switchState.isOn)
        currentUser.describe()
        allUsers.append(currentUser)
    }
    
    @IBAction func listUser(_ sender: Any) {
        for user in allUsers {
            user.describe()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ageVal.text = "36"
    }

    func updateAge() {
        ageVal.text = "\(Int(ageSliderValue.value))"
    }
    


}

