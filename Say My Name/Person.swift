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
    private var _eyeColor: String!
    private var _gender: String!
    private var _race: String!
    private var _phoneNumber: String!
    private var _email: String!
    
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
    
    var eyeColor: String {
        get {
            return _eyeColor
        } set {
            _eyeColor = newValue
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
    
    init(name: String, meetingPlace: String, height: String, build: String, hairColor: String, eyeColor: String, gender: String, race: String, phoneNumber: String, email: String) {
        self._name = name
        self._meetingPlace = meetingPlace
        self._height = height
        self._build = build
        self._hairColor = hairColor
        self._eyeColor = eyeColor
        self._gender = gender
        self._race = race
        self._phoneNumber = phoneNumber
        self._email = email
    }
    
    
}
