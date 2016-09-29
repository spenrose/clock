//
//  WindowController.swift
//  Clock
//
//  Created by Scott Penrose on 10/20/14.
//  Copyright (c) 2014 Scott Penrose. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        
        if let window = self.window {
            window.styleMask = NSBorderlessWindowMask
            window.isOpaque = false
            window.hasShadow = false
            window.isMovable = true
            window.isMovableByWindowBackground = true
            window.isReleasedWhenClosed = false
            window.backgroundColor = NSColor.clear
        }
    }
}
