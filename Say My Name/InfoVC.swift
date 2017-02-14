//
//  InfoVC.swift
//  Say My Name
//
//  Created by Steven Sherry on 1/19/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class InfoVC: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var contactPicture: ContactImage!
    
    @IBOutlet weak var phoneNumberButton: UIButton!
    
    @IBOutlet weak var emailButton: UIButton!
    
    var imagePicker = UIImagePickerController()
    var person : Contact? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if person != nil {
            contactPicture.image = UIImage(data: person!.image as! Data)
            nameLabel.text = person!.name
            phoneNumberButton.setTitle(person!.phoneNumber, for: .normal)
            emailButton.setTitle(person!.email, for: .normal)
        } else {
            contactPicture.image = #imageLiteral(resourceName: "DefaultPicture")
            nameLabel.text = "Contact Name"
            phoneNumberButton.setTitle("555-555-5555", for: .normal)
            emailButton.setTitle("person@internet.com", for: .normal)
        }
        
    }
    

    @IBAction func phoneNumberButtonPressed(_ sender: Contact) {
        let url = URL(string: "tel://713-724-8726")
            if #available(iOS 10, *) {
                UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url! as URL)
            }
        
    }
    
    @IBAction func emailButtonPressed(_ sender: Any) {
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editButtonPressed(_ sender: Any) {
    }


}
