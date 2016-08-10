//
//  ViewController.swift
//  Egg Timer
//
//  Created by Zulwiyoza Putra on 8/9/16.
//  Copyright © 2016 Zulwiyoza Putra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var secondsTimer = NSTimer()
    
    var minutesTimer = NSTimer()
    
    var hoursTimer = NSTimer()
    
    var seconds = 0
    
    var minutes = 0
    
    var hours = 0
    
    @IBOutlet weak var secondsLabel: UILabel!
    
    @IBOutlet weak var minutesLabel: UILabel!
    
    @IBOutlet weak var hoursLabel: UILabel!
    
    func increaseSeconds() {
        
        if seconds < 59 {
            
            seconds += 1
            
            secondsLabel.text = String(seconds)
            
        } else {
            
            seconds = 0
            
            secondsLabel.text = String(0)
        }
        
    }
    
    func increaseMinutes() {
        
        if minutes < 59 {
            
            minutes += 1
            
            minutesLabel.text = String(minutes)
            
        } else {
            
            minutes = 0
            
            minutesLabel.text = String(0)
        }
        
    }
    
    func increaseHours() {
        
        if hours < 59 {
            
            hours += 1
            
            hoursLabel.text = String(seconds)
            
        } else {
            
            hours = 0
            
            hoursLabel.text = String(0)
        }
        
    }
    
    @IBAction func play(sender: AnyObject) {
        
        secondsTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.increaseSeconds), userInfo: nil, repeats: true)
        
        minutesTimer = NSTimer.scheduledTimerWithTimeInterval(60, target: self, selector: #selector(ViewController.increaseMinutes), userInfo: nil, repeats: true)
        
        hoursTimer = NSTimer.scheduledTimerWithTimeInterval(3600, target: self, selector: #selector(ViewController.increaseHours), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        secondsTimer.invalidate()
        
        minutesTimer.invalidate()
        
        hoursTimer.invalidate()
        
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        secondsTimer.invalidate()
        
        minutesTimer.invalidate()
        
        hoursTimer.invalidate()
        
        seconds = 0
        
        minutes = 0
        
        hours = 0
        
        secondsLabel.text = "0"
        
        minutesLabel.text = "0"
        
        hoursLabel.text = "0"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

