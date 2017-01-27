//
//  Person.swift
//  Say My Name
//
//  Created by Steven Sherry on 1/19/17.
//  Copyright © 2017 Affinity for Apps. All rights reserved.
//

import Foundation

class Person {
    private var _name: String!
    private var _meetingPlace: String!
    private var _height: String!
    private var _build: String!
    private var _hairColor: String!
    private var _birthday: String!
    private var _gender: String!
    private var _race: String!
    private var _phoneNumber: String!
    private var _email: String!
    private var _occupation: String!
    private var _employer: String!
    private var _likes: [String]!
    private var _dislikes: [String]!
    private var _notableEvents: [String]!
    private var _spouse: [String:[String:String]]!
    private var _children: [String:[String:String]]!
    
    
    var name: String {
        get {
            return _name
        } set {
            _name = newValue
        }
    }
    
    var meetingPlace: String {
        get {
            return _meetingPlace
        } set {
            _meetingPlace = newValue
        }
    }
    
    var height: String {
        get {
            return _height
        } set {
            _height = newValue
        }
    }
    
    var build: String {
        get {
            return _build
        } set {
            _build = newValue
        }
    }
    
    var hairColor: String {
        get {
            return _hairColor
        } set {
            _hairColor = newValue
        }
    }
    
    var birthday: String {
        get {
            return _birthday
        } set {
            _birthday = newValue
        }
    }
    
    var gender: String {
        get {
            return _gender
        } set {
            _gender = newValue
        }
    }
    
    var race: String {
        get {
            return _race
        } set {
            _gender = newValue
        }
    }
    
    var phoneNumber: String {
        get {
            return _phoneNumber
        } set {
            _phoneNumber = newValue
        }
    }
    
    var email: String {
        get {
            return _email
        } set {
            _email = newValue
        }
    }
    
    var occupation: String {
        get {
            return _occupation
        } set {
            _occupation = newValue
        }
    }
    
    var employer: String {
        get {
            return _employer
        } set {
            _employer = newValue
        }
    }
    
    var likes: [String] {
        get {
            return _likes
        } set {
            _likes = newValue
        }
    }
    
    var dislikes: [String] {
        get {
            return _dislikes
        } set {
            _dislikes = newValue
        }
    }
    
    var notableEvents: [String] {
        get {
            return _notableEvents
        } set {
            _notableEvents = newValue
        }
    }
    
    var spouse: [String:[String:String]] {
        get {
            return _spouse
        } set {
            _spouse = newValue
        }
    }
    
    var children: [String:[String:String]] {
        get {
            return _children
        } set {
            _children = newValue
        }
    }
    
    
    init(name: String, meetingPlace: String, height: String, build: String, hairColor: String, birthday: String, gender: String, race: String, phoneNumber: String, email: String, likes: [String], dislikes: [String], notableEvents: [String], spouse: [String:[String:String]], children: [String:[String:String]]) {
        self._name = name
        self._meetingPlace = meetingPlace
        self._height = height
        self._build = build
        self._hairColor = hairColor
        self._birthday = birthday
        self._gender = gender
        self._race = race
        self._phoneNumber = phoneNumber
        self._email = email
        self._likes = likes
        self._dislikes = dislikes
        self._notableEvents = notableEvents
        self._spouse = spouse
        self._children = children
    }
    
    
}
