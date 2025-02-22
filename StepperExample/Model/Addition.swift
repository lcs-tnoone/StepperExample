//
//  Addition.swift
//  StepperExample
//
//  Created by Thomas Noone on 2025-02-22.
//

import SwiftUI

struct Addition {
    
    //MARK: Stored Properties
    
    var base: Double
    
    var base2: Double
    
    
    //MARK: Computed Properties
    var result: Double {
        
        var solution = base + base2
        return solution
        
    }
    
}
