//
//  SayMyNameTwoVC.swift
//  Say My Name
//
//  Created by Steven Sherry on 2/13/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class SayMyNameTwoVC: UITableViewController, UITextViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var occupationTextField: UITextField!
    
    @IBOutlet weak var employerTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var buildTextField: UITextField!
    
    @IBOutlet weak var hairColorTextField: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var raceTextField: UITextField!
    
    @IBOutlet weak var meetingPlaceTextField: UITextField!
    
    @IBOutlet weak var relatedContactTextField: UITextField!
    
    @IBOutlet weak var spouseTextField: UITextField!
    
    @IBOutlet weak var likesTextView: UITextView!
    
    @IBOutlet weak var dislikesTextView: UITextView!
    
    @IBOutlet weak var notesTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }

    func savePerson(person: Contact){
        
        //save contact
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let person = Contact(context: context)
        
        person.phoneNumber = phoneNumberTextField.text
        person.email = emailTextField.text
        person.occupation = occupationTextField.text
        person.employer = employerTextField.text
        person.height = heightTextField.text
        person.build = buildTextField.text
        person.hairColor = hairColorTextField.text
        person.gender = genderTextField.text
        person.race = raceTextField.text
        person.meetingPlace = meetingPlaceTextField.text
        person.relatedContact = relatedContactTextField.text
        person.spouse = spouseTextField.text
        person.likes = likesTextView.text
        person.dislikes = dislikesTextView.text
        person.notes = notesTextView.text
        
        //clear fields
        
        phoneNumberTextField.text = ""
        emailTextField.text = ""
        occupationTextField.text = ""
        employerTextField.text = ""
        heightTextField.text = ""
        buildTextField.text = ""
        hairColorTextField.text = ""
        genderTextField.text = ""
        raceTextField.text = ""
        meetingPlaceTextField.text = ""
        relatedContactTextField.text = ""
        spouseTextField.text = ""
        likesTextView.text = ""
        dislikesTextView.text = ""
        notesTextView.text = ""

        
    }
    
}



