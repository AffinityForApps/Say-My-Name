//
//  ContactImage.swift
//  Say My Name
//
//  Created by Steven Sherry on 2/7/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class ContactImage: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 63.5
        self.clipsToBounds = true
    }

}
