//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Cosmic Arrows, LLC on 5/2/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var textField: NSTextField!

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    
    @IBAction func generatePassword(_ sender: AnyObject) {
        
        //Get a random string of length 8
        let length = 8
        
        let password = generateRandomString(length: length)
        
        //tell the text field to display the string
        textField.stringValue = password
        
        
        
    }
    
    
}
