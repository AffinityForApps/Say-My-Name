//
//  SayMyNameVC.swift
//  Say My Name
//
//  Created by Steven Sherry on 1/19/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class SayMyNameVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    var sayMyNameTwo: SayMyNameTwoVC?
    
    @IBOutlet weak var personPicture: UIImageView!

    @IBOutlet weak var personNameTextField: UITextField!

    
    var imagePicker = UIImagePickerController()
    var person : Contact? = nil
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imagePicker.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addEditTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    //Select an image for the contact
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        personPicture.image = image
        
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sayMyNamSeg" {
            self.sayMyNameTwo = segue.destination as? SayMyNameTwoVC
        }
    }
    

    @IBAction func smnButtonTapped(_ sender: Any) {
        
        //Save Contact
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let person = Contact(context: context)
        
        person.image = UIImagePNGRepresentation(personPicture.image!) as NSData?
        person.name = personNameTextField.text
        self.sayMyNameTwo?.savePerson(person: person)
        

        
        //Clear fields
        
        personPicture.image = #imageLiteral(resourceName: "DefaultPicture")
        personNameTextField.text = ""

        
    }
    

}

