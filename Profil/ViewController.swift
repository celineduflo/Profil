//
//  ViewController.swift
//  Profil
//
//  Created by Céline Duflo on 25/06/2019.
//  Copyright © 2019 Céline Duflo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageVal: UILabel!
    @IBOutlet weak var ageSliderValue: UISlider!
    @IBOutlet weak var switchState: UISwitch!
    
    
    @IBAction func ageSlider(_ sender: Any) {
        updateAge()
    }
    
    @IBAction func switchAction(_ sender: Any) {
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

