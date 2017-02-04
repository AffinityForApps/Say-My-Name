//
//  ContactCell.swift
//  Say My Name
//
//  Created by Steven Sherry on 2/3/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var personImage: ContactCellImage!
    
    @IBOutlet weak var personNameLabel: UILabel!
    
    @IBOutlet weak var personOccupationLabel: UILabel!
    
    @IBOutlet weak var personEmployerLabel: UILabel!
    
    var people : [Contact] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(person: Contact) {
        
        //when downloading items from the internet
        //ALWAYS perform downloads in an asyncronous thread
        
        
        DispatchQueue.global().async {
            do {
                DispatchQueue.global().sync {
                    self.personImage?.image = UIImage(data: person.image as! Data)
                    self.personNameLabel?.text = person.name
                    self.personOccupationLabel?.text = person.occupation
                    self.personEmployerLabel?.text = person.employer
                }
            } catch {
                //handle the error
            }
        }
        
    }


}
