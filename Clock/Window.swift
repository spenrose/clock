//
//  Window.swift
//  Clock
//
//  Created by Scott Penrose on 10/19/14.
//  Copyright (c) 2014 Scott Penrose. All rights reserved.
//

import Cocoa

class Window: NSWindow {
    
    override var canBecomeKeyWindow: Bool {
        get {
            return true
        }
    }
    
    override init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool) {
        super.init(contentRect: NSZeroRect, styleMask: NSBorderlessWindowMask, backing: .Buffered, defer: false)
        
        opaque = false
        hasShadow = false
        movable = true
        movableByWindowBackground = true
        releasedWhenClosed = false
        backgroundColor = NSColor.clearColor()
        center()
        makeKeyAndOrderFront(nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
