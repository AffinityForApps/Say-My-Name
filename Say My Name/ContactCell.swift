//
//  ContactCell.swift
//  Say My Name
//
//  Created by Steven Sherry on 1/30/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var contactPicture: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var employerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateUI(person: Contact) {
        
        DispatchQueue.global().async {
            do {
                DispatchQueue.global().sync {
                    self.contactPicture?.image = UIImage(data: person.image as! Data)
                }
            } catch {
                self.contactPicture?.image = #imageLiteral(resourceName: "DefaultPicture")
            }
        }
        nameLabel?.text = person.name
        occupationLabel?.text = person.occupation
        employerLabel?.text = person.employer
    }


}
