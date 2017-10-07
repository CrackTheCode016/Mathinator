//
//  Global.swift
//  Ultimate Mathinator
//
//  Created by Santiago on 10/5/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import Foundation

func peformSlopeCalculation(x1: String, y1: String, x2: String, y2: String, processLabel: inout String) -> String {
    
    var ys: Double = 0.0
    var xs: Double = 0.0
    
    if x1 != "" && x2 != "" && y1 != "" && y2 != "" {
        ys = Double(y2)! - Double(y1)!
        xs = Double(x2)! - Double(x1)!
        
    }
    processLabel = "\(y2) - \(y1)\n\(x2) - \(x1)\n\(ys) / \(xs)"
    return "\(ys/xs)"
}

func createFunctionFromResults(x: String, y: String, slope: String, processLabel: inout String) -> String {
        let distribute = Double(slope)! * Double(x)!
        let xOverY = distribute/Double(y)!
        processLabel = "y - \(y) = \(slope)(x - \(x))"
        let resultString = "y = \(slope)x + \(xOverY)"
        return resultString
}
