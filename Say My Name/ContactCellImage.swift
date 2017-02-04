//
//  ContactCellImage.swift
//  Say My Name
//
//  Created by Steven Sherry on 2/3/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import UIKit

class ContactCellImage: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 32.5
        self.clipsToBounds = true
    }

}
