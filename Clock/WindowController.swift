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
            window.opaque = false
            window.hasShadow = false
            window.movable = true
            window.movableByWindowBackground = true
            window.releasedWhenClosed = false
            window.backgroundColor = NSColor.clearColor()
        }
    }
}
