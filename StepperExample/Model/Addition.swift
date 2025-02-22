//
//  Addition.swift
//  StepperExample
//
//  Created by Thomas Noone on 2025-02-22.
//

import SwiftUI

struct Addition {
    
    //MARK: Stored Properties
    
    var augend: Double
    
    var addend: Double
    
    
    //MARK: Computed Properties
    var sum: Double {
        
        var solution = augend + addend
        return solution
        
    }
    
}
