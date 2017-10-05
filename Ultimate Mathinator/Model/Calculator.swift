//
//  Calc.swift
//  Ultimate Mathinator
//
//  Created by Santiago on 10/3/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import Foundation


class Calculator {
    
    func peformSlopeCalculation(x1: String, y1: String, x2: String, y2: String) -> String {

            var ys: Double = 0.0
            var xs: Double = 0.0
        ys = Double(y2)! - Double(y1)!
        xs = Double(x2)! - Double(x1)!
            return "\(ys/xs)"
        }
    
    }


