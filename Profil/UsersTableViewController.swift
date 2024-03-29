//
//  UsersTableViewController.swift
//  Profil
//
//  Created by Céline Duflo on 26/06/2019.
//  Copyright © 2019 Céline Duflo. All rights reserved.
//

import UIKit

class UsersTableViewController: UITableViewController {
   
    var toto: [User] = []
    var appr: [User] = []
    var form: [User] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return toto.count
        //reecrire avec 1 seul tableau en entree où on compte le nombre soit de users soit d'apprenants
        return (section == 0 ? appr.count : form.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        
//        let user = toto[indexPath.row]
//        cell.textLabel?.text = "\(user.firstName) \(user.lastName)"
//        cell.detailTextLabel?.text = user.isTrainer ? "Formateur" : "Apprenant"
//        return cell
        
        //réecrit en filtrant le tableau affiché selon le user trainer ou apprenant:
        switch(indexPath.section){
            case 0:
                cell.textLabel?.text = appr[indexPath.row].firstName + " " + appr[indexPath.row].lastName
                cell.detailTextLabel?.text = "apprenant"
                cell.imageView?.image =  appr[indexPath.row].avatar
            default:
                cell.textLabel?.text = form[indexPath.row].firstName + " " + form[indexPath.row].lastName
                cell.detailTextLabel?.text = "formateur"
                cell.imageView?.image =  form[indexPath.row].avatar
        }
        
//        let list = [0, 1, 2, 3, 4, 5, 6, 7, 8]
//        let choice = list.randomElement()!
//        let image = UIImage (named: String(choice))
//        let image = UIImage (named: avatar)

        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //         #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return "Apprenants"
        case 1:
            return "Formateurs"
        default:
            return ""
        }
        //POUR METTRE LES NOMS DES CONTINENTS EN TITRE
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
