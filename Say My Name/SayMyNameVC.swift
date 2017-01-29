//
//  SayMyNameVC.swift
//  Say My Name
//
//  Created by Steven Sherry on 1/19/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class SayMyNameVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var personPicture: UIImageView!

    @IBOutlet weak var personNameTextField: UITextField!
    
    @IBOutlet weak var personForm: UIStackView!
    
    @IBOutlet weak var sayMyNameScroll: UIScrollView!
    
    //Text fields and text views inside of scrollView and personForm stackview
    
    @IBOutlet weak var meetingPlaceTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var buildTextField: UITextField!
    
    @IBOutlet weak var hairColorTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var raceTextField: UITextField!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var occupationTextField: UITextField!
    
    @IBOutlet weak var employerTextField: UITextField!
    
    @IBOutlet weak var likesTextView: UITextView!
    
    @IBOutlet weak var dislikesTextView: UITextView!
    
    @IBOutlet weak var notableEventsTextView: UITextView!
    
    @IBOutlet weak var spouseTextField: UITextField!
    
    @IBOutlet weak var childrenTextView: UITextView!
    
    var imagePicker = UIImagePickerController()
    var person : Contact? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        sayMyNameScroll.contentSize = CGSize(width: personForm.frame.size.width, height: personForm.frame.size.height + 20)
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
    
    //Save contact
    
    @IBAction func smnButtonTapped(_ sender: Any) {
        
        //Save Contact
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let person = Contact(context: context)
        
        person.image = UIImagePNGRepresentation(personPicture.image!) as NSData?
        person.name = personNameTextField.text
        person.meetingPlace = meetingPlaceTextField.text
        person.height = heightTextField.text
        person.build = buildTextField.text
        person.hairColor = hairColorTextField.text
        person.birthday = birthdayTextField.text
        person.gender = genderTextField.text
        person.race = raceTextField.text
        person.phoneNumber = phoneNumberTextField.text
        person.email = emailTextField.text
        person.occupation = occupationTextField.text
        person.employer = employerTextField.text
        person.likes = likesTextView.text
        person.dislikes = dislikesTextView.text
        person.notableEvents = notableEventsTextView.text
        person.spouse = spouseTextField.text
        person.children = childrenTextView.text
        
        //Clear fields
        
        personPicture.image = #imageLiteral(resourceName: "DefaultPicture")
        personNameTextField.text = ""
        meetingPlaceTextField.text = ""
        heightTextField.text = ""
        buildTextField.text = ""
        hairColorTextField.text = ""
        birthdayTextField.text = ""
        genderTextField.text = ""
        raceTextField.text = ""
        phoneNumberTextField.text = ""
        emailTextField.text = ""
        occupationTextField.text = ""
        employerTextField.text = ""
        likesTextView.text = ""
        dislikesTextView.text = ""
        notableEventsTextView.text = ""
        spouseTextField.text = ""
        childrenTextView.text = ""
        
    }
    

}

