//
//  ViewController.swift
//  Profil
//
//  Created by Céline Duflo on 25/06/2019.
//  Copyright © 2019 Céline Duflo. All rights reserved.
//

import UIKit
//employe
class ViewController: UIViewController, TransferAvatar {
    

    var allUsers: [User] = []
    var formateurs: [User] = []
    var apprenants: [User] = []
    var photo: UIImage?
    
    func transfer(avatar: UIImage) {
        photo = avatar
    }
    
 //    var currentUser: User
    
    
    @IBOutlet weak var ageVal: UILabel!
    @IBOutlet weak var ageSliderValue: UISlider!
    @IBOutlet weak var switchState: UISwitch!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    
    
    @IBAction func ageSlider(_ sender: Any) {
        updateAge()
    }
    
    @IBAction func switchAction(_ sender: Any) {

    }
    
    @IBAction func createUser(_ sender: Any) {
        var currentUser = User(firstName:firstName.text!, lastName: lastName.text!, age:Int(ageSliderValue.value), isTrainer: switchState.isOn)

        currentUser.describe()
        currentUser.avatar = photo
        
        allUsers.append(currentUser)
        if currentUser.isTrainer {
            formateurs.append(currentUser)
        } else {
            apprenants.append(currentUser)
        }
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    
        if let destinationViewController = segue.destination as? UsersTableViewController {
            destinationViewController.toto = allUsers
//            destination <-- origine
            destinationViewController.appr = apprenants
            destinationViewController.form = formateurs
        }
        
        if let destinationViewController = segue.destination as? AvatarViewController {
            destinationViewController.delegate = self
            //            destination <-- origine
        }
        
    }
    
    func updateAge() {
        ageVal.text = "\(Int(ageSliderValue.value))"
    }
    
    
//    let image =


}

