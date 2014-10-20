//
//  ViewController.swift
//  Clock
//
//  Created by Scott Penrose on 10/18/14.
//  Copyright (c) 2014 Scott Penrose. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var timeLabel: NSTextField!
    @IBOutlet weak var dateLabel: NSTextField!
    @IBOutlet var visualEffectView: NSVisualEffectView!
    
    let dateFormatter: NSDateFormatter
    let timeFormatter: NSDateFormatter
    
    required init?(coder: NSCoder) {
        dateFormatter = NSDateFormatter()
        dateFormatter.timeStyle = .NoStyle
        dateFormatter.dateStyle = .LongStyle
        
        timeFormatter = NSDateFormatter()
        timeFormatter.timeStyle = .MediumStyle
        timeFormatter.dateStyle = .NoStyle
        
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set a mask on the visual effect view to round our corners
        visualEffectView.maskImage = NSImage(size: view.bounds.size, flipped: true, drawingHandler: { (dstRect: NSRect) -> Bool in
            let path = NSBezierPath(roundedRect: self.view.bounds, xRadius: 20.0, yRadius: 20.0)
            path.fill()
            return true
        })
        
        NSTimer.scheduledTimerWithTimeInterval(1.0/10.0, target: self, selector: "updateTimeStamp", userInfo: nil, repeats: true)
        updateTimeStamp()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    // MARK: - 
    
    func updateTimeStamp() {
        let now = NSDate()
        timeLabel.stringValue = timeFormatter.stringFromDate(now)
        dateLabel.stringValue = dateFormatter.stringFromDate(now)
    }

}

