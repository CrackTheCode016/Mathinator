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
    var xOverY: Double = 0.0
     if x != "" && y != "" && slope != "" {
        let distribute = Double(slope)! * Double(x)!
        xOverY = distribute/Double(y)!
    }
        processLabel = "y - \(y) = \(slope)(x - \(x))"
        let resultString = "y = \(slope)x + \(xOverY)"
        return resultString
}


func calculateDistanceBetweenPoints(x1: String, y1: String, x2: String, y2: String, processLabel: inout String) -> String {
    
    var ys: Double = 0.0
    var xs: Double = 0.0
    
    if x1 != "" && x2 != "" && y1 != "" && y2 != "" {
        ys = Double(y2)! - Double(y1)!
        xs = Double(x2)! - Double(x1)!
        
    }
    let ysSquared = ys * ys
    let xsSquared = xs * xs
    let added  = xsSquared + ysSquared
    processLabel = "√(\(x2) - \(x1))^2 + (\(y2) - \(y1)^2 \n √(\(xs))^2 + (\(ys))^2 \n √\(xsSquared) + \(ysSquared) \n √\(added) \n \(added.squareRoot())"
    
    return "\(added.squareRoot())"
}


func pythagoreanThereom(a: String, b: String, processLabel: inout String) -> String {
    var cSquared: Double = 0.0
    if a != "" && b != "" {
        let aSquared = pow(Double(a)!, 2)
        let bSquared = pow(Double(b)!, 2)
        cSquared = aSquared + bSquared
        processLabel = "√\(a)^2 + \(b)^2 = c \n √\(aSquared) + \(bSquared) = c \n √\(cSquared) = c \n c = \(cSquared.squareRoot()) "

    }
    return "\(cSquared.squareRoot())"
}
