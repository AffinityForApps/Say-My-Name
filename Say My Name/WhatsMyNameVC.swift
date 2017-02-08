//
//  WhatsMyNameVC.swift
//  Say My Name
//
//  Created by Steven Sherry on 1/19/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class WhatsMyNameVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var contactList: UITableView!
    
    var people : [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactList.dataSource = self
        contactList.delegate = self
     
    }
    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do{
            people = try context.fetch(Contact.fetchRequest())
            contactList.reloadData()
        } catch {
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as? ContactCell {
            let person = people[indexPath.row]
            
            cell.updateUI(person: person)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = people[indexPath.row]
        performSegue(withIdentifier: "contactSegue", sender: person)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! InfoVC
        nextVC.person = sender as? Contact
    }


   
    
}
