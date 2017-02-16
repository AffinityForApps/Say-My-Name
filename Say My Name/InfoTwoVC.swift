//
//  InfoTwoVC.swift
//  Say My Name
//
//  Created by Steven Sherry on 2/12/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class InfoTwoVC: UITableViewController {
    
    
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var occupationLabel: UILabel!
    
    @IBOutlet weak var employerLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var buildLabel: UILabel!
    
    @IBOutlet weak var hairColorLabel: UILabel!
    
    @IBOutlet weak var genderLabel: UILabel!
    
    @IBOutlet weak var raceLabel: UILabel!
    
    @IBOutlet weak var meetingPlaceLabel: UILabel!
    
    @IBOutlet weak var relatedContactLabel: UILabel!
    
    @IBOutlet weak var spouseLabel: UILabel!
    
    @IBOutlet weak var likesTextView: UITextView!
    
    @IBOutlet weak var dislikesTextView: UITextView!
    
    @IBOutlet weak var notesTextView: UITextView!
    
    var person : Contact? = nil
    
    var phoneNumberForAction : String? = nil
    
    var emailForAction : String? = nil
    
    var url : URL? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if person != nil {
            phoneNumberForAction = person!.phoneNumber
            emailForAction = person!.email
            phoneNumberLabel.text = person!.phoneNumber
            emailLabel.text = person!.email
            occupationLabel.text = person!.occupation
            employerLabel.text = person!.employer
            heightLabel.text = person!.height
            buildLabel.text = person!.build
            hairColorLabel.text = person!.hairColor
            genderLabel.text = person!.gender
            raceLabel.text = person!.race
            meetingPlaceLabel.text = person!.meetingPlace
            relatedContactLabel.text = person!.relatedContact
            spouseLabel.text = person!.spouse
            likesTextView.text = person!.likes
            dislikesTextView.text = person!.dislikes
            notesTextView.text = person!.notes
            url = URL(string: "tel://\(person!.phoneNumber)")
        } else {
            phoneNumberLabel.isHidden = true
            emailLabel.isHidden = true
            occupationLabel.isHidden = true
            employerLabel.isHidden = true
            heightLabel.isHidden = true
            buildLabel.isHidden = true
            hairColorLabel.isHidden = true
            genderLabel.isHidden = true
            raceLabel.isHidden = true
            meetingPlaceLabel.isHidden = true
            relatedContactLabel.isHidden = true
            spouseLabel.isHidden = true
            likesTextView.isHidden = true
            dislikesTextView.isHidden = true
            notesTextView.isHidden = true
        }

    }


    @IBAction func callButtonTapped(_ sender: Any) {
        if #available(iOS 10, *) {
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url! as URL)
        }

    }
    
    @IBAction func textButtonTapped(_ sender: Any) {
    }
    
    @IBAction func emailButtonTapped(_ sender: Any) {
    }
    
    
    
}
