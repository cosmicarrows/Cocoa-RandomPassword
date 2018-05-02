//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by Cosmic Arrows, LLC on 5/2/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation
//he always gottta do some crazy shit, well what's crazy shit??  This shit here below where he starts using the word private.  Let's see what happens and what this means...

//okay after a Google search on Swift, private just means that this property which is a constant will only be accessible from within this class....so basically if we instantiate an instance of this class in a ViewController, then we won't be able to (or at least I'm thinking we should't be able to) call on this property in order to get or set it.
private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")

func generateRandomString(length: Int)
    -> String {
        //Start with an empty string!
        var string = ""
        
        //append 'length' number of random characters
        for index in 0..<length {
            string.append(generateRandomCharacter())
        }
        return string
}

func generateRandomCharacter() -> Character {
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    
    let character = characters[index]
    
    return character
}

//I'm cool with this codebase but now I'm curious to know is where will the 'length' parameter come from in this application?

