//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
                
       // TODO: Implement this function.
        var lineMsgDesp:String = ""
        if line.isEmpty {
            line.append(name)
            lineMsgDesp = "Welcome \(name), you're first in line!"
        }
        else if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
            lineMsgDesp = "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            lineMsgDesp = "Welcome \(name), you're number \(line.count) in line."
        }
        return lineMsgDesp
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        var nowServingMsg = ""
        if line.isEmpty {
            nowServingMsg = "There is no one to be served."
        } else {
           nowServingMsg = "Now serving \(line.removeFirst())!"
        }
        
        return nowServingMsg
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var lineDespMsg = ""
        if line.isEmpty {
            lineDespMsg = "The line is currently empty."
        } else {
            lineDespMsg = "The line is:"
            for (idx,val) in line.enumerated() {
                lineDespMsg += "\n\(idx+1). \(val)"
            }
        }
        
        return lineDespMsg
    }
    
}
