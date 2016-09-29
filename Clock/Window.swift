//
//  Window.swift
//  Clock
//
//  Created by Scott Penrose on 10/19/14.
//  Copyright (c) 2014 Scott Penrose. All rights reserved.
//

import Cocoa

class Window: NSWindow {
    
    override var canBecomeKey: Bool {
        get {
            return true
        }
    }
    
    override init(contentRect: NSRect, styleMask aStyle: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: NSBorderlessWindowMask, backing: .buffered, defer: false)
    }
    
}
