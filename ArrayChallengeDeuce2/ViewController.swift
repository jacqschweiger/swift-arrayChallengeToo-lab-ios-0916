//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addNameToDeliLine(name:String) -> String {
        var message = ""
        if name == "Billy Crystal" {
            deliLine.insert(name, atIndex: 0)
            message = "Welcome Billy! You can sit wherever you like."
        }
        else if name == "Meg Ryan" {
            deliLine.insert(name, atIndex: 0)
            message = "Welcome Meg! You can sit wherever you like."
        }
        else if deliLine.count == 0 {
            deliLine.insert(name, atIndex: 0)
            message = "Welcome \(name), you're first in line!"
        }
        else {
            deliLine.append(name)
            message = "Welcome \(name), you're number \(deliLine.count) in line."
        }
        return message
    }
    
    
    
    func nowServing() -> String {
        var message = ""
        if deliLine.isEmpty {
            message = "There is no one to be served."
        } else {
            message = "Now serving \(deliLine[0])!"
            deliLine.removeAtIndex(0)
        }
        return message
    }
    
    
    func deliLineDescription() -> String {
        var message = ""
        if deliLine.isEmpty {
            message = "The line is currently empty."
        } else {
            message = "The line is:"
            for (index, name) in deliLine.enumerate() {
                message = message + "\n\(index+1). \(name)"
            }
        }
        return message
    }
    
}