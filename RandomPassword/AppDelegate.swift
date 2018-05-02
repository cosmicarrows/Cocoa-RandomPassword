//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by Cosmic Arrows, LLC on 5/2/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    //@IBOutlet weak var window: NSWindow!
    var mainWindowController: MainWindowController?


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        //creating a new constant within the scope of this DidFinishLaunching function
        let mainWindowController = MainWindowController(windowNibName: NSNib.Name(rawValue: "MainWindowController"))
        
        //put the window of the window controller on the screen
        mainWindowController.showWindow(self)
        
        //set the property to point to the window controller
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

