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
    
    @IBOutlet weak var editPhotoButton: UIButton!
    
    var imagePicker = UIImagePickerController()
    var person : Contact? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editPhotoButton.isHidden = true
        
        if person != nil {
            contactPicture.image = UIImage(data: person!.image as! Data)
            nameLabel.text = person!.name
            
        } else {
            contactPicture.image = #imageLiteral(resourceName: "DefaultPicture")
            nameLabel.text = "Contact Name"
            
        }
        
    }
    
    @IBAction func callButtonPressed(_ sender: Any) {
        
        let url = URL(string: "tel://713-724-8726")
        if url != nil {
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        } else {
            print("url is nil")
        }
        
    }
    
    @IBAction func textButtonPressed(_ sender: Any) {
    }
 
    
    @IBAction func emailButtonPressed(_ sender: Any) {
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editButtonPressed(_ sender: Any) {
    }


}
