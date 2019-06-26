//
//  AvatarViewController.swift
//  Profil
//
//  Created by Céline Duflo on 26/06/2019.
//  Copyright © 2019 Céline Duflo. All rights reserved.
//

import UIKit

class AvatarViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    

    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var avatarVue: UIImageView!
    
    
    let pickerData = ["Item 1",
                      "Item 2",
                      "Item 3",
                      "Item 4",
                      "Item 5",
                      "Item 6",
                      "Item 7",
                      "Item 8",
                      "Item 9"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//            let picki = picker.
        // Do any additional setup after loading the view.
    }
    
    

    
//        var pickerData: [String] = [String]()
        
    
        
//        avatarVue.image = UIImage(named: "")
        
        //  UIPickerViewDataSource
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return pickerData.count
        }
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        //  UIPickerViewDelegate
        func pickerView(_ pickerView: UIPickerView,
                        titleForRow row: Int,
                        forComponent component: Int) -> String? {
            return pickerData[row]
            
        }
        
        func pickerView(_ pickerView: UIPickerView,
                        didSelectRow row: Int,
                        inComponent component: Int) {
            print("row: \(row), component: \(component)")
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


