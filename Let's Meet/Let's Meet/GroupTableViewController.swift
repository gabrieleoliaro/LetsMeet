//
//  GroupTableViewController.swift
//  Let's Meet
//
//  Created by Oliaro, Gabriele on 12/2/17.
//  Copyright © 2017 Kit, Alejandro & Gabriel. All rights reserved.
//

/*
 #cs50
 THIS IS OUR TABLE VIEW CONTROLLER. 
 
 As per the official Apple Developer Guide "Start Developing iOS Apps (Swift)":

 "To display any real data in your table cells, you need to write code to load that data." 
 
 We've created our data model for a group: the Group class in the Group.swift file. Now we also need to keep a list of those groups. The natural place to track this is in a custom view controller subclass that’s connected to the group list scene (the app page that shows all the groups in a table view). This view controller will manage the view that displays the list of meals, and have a reference to the data model behind what’s shown in the user interface.
 
 */


import UIKit

class GroupTableViewController: UITableViewController {
    
    
    
    //MARK: Properties
    
    var groups = [Group]() // This creates the array of objects Groups
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the sample data by calling the private function loadSampleGroups() defined at the end of this page
        loadSampleGroups()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - Table view data source

    // #cs50 This functions defines the number of sections of the table view. In our case, the table is pretty simple, and so one section is enough
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    // #cs50 This function determines the number of rows that the table will need by counting the number of groups in the groups array.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //MARK: Private Methods
    
    // This function will load for the demo the 4 sample group whose images are saved into the Assets.xcassets
    private func loadSampleGroups() {
        
        // Declare a constant for each image in Assets.xcassets
        let photo1 = UIImage(named: "CS 50")
        let photo2 = UIImage(named: "Ec 10")
        let photo3 = UIImage(named: "CSA group")
        let photo4 = UIImage(named: "Best friends")
        
        // Instantiate the sample groups with name, photo and description
        guard let group1 = Group(name: "CS 50", photo: photo1, description: "Official group for Fall 2017") else {
            fatalError("Unable to instantiate group1")
        }
        
        guard let group2 = Group(name: "EC 10", photo: photo2, description: "Official group for Fall 2017") else {
            fatalError("Unable to instantiate group1")
        }
        
        guard let group3 = Group(name: "CSA group", photo: photo3, description: "Catholic Student Association (all members)") else {
            fatalError("Unable to instantiate group1")
        }
        
        guard let group4 = Group(name: "Best friends", photo: photo4, description: "Ryan, Pawel, Gabriele, Pedro, Joey, Caleb") else {
            fatalError("Unable to instantiate group1")
        }
        
        groups += [group1, group2, group3, group4]
    }


}
