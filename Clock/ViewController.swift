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
    
    let dateFormatter: DateFormatter
    let timeFormatter: DateFormatter
    
    required init?(coder: NSCoder) {
        dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .none
        dateFormatter.dateStyle = .long
        
        timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .medium
        timeFormatter.dateStyle = .none
        
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
        
        Timer.scheduledTimer(timeInterval: 1.0/10.0, target: self, selector: #selector(ViewController.updateTimeStamp), userInfo: nil, repeats: true)
        updateTimeStamp()
    }
    
    // MARK: - 
    
    @objc func updateTimeStamp() {
        let now = Date()
        timeLabel.stringValue = timeFormatter.string(from: now)
        dateLabel.stringValue = dateFormatter.string(from: now)
    }

}

