//
//  ImageController.swift
//  Profil
//
//  Created by Céline Duflo on 26/06/2019.
//  Copyright © 2019 Céline Duflo. All rights reserved.
//

import UIKit

class ImageController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    image.image = UIImage(named: "montagne.jpeg")
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
