//
//  AdditionViewModel.swift
//  StepperExample
//
//  Created by Thomas Noone on 2025-02-22.
//

import Foundation
@Observable
//View Model
class AdditionViewModel {
    
    //MARK: Stored Properties
    
    //Hold what user has typed
    
    var providedBase: String
    var providedBase2: String
    
    //Holds error message
    var recoverySuggestion: String = ""
    
    //MARK: Computed Properties
    
    var addition: Addition? {
        //First check that the string in provided base can be converted into a number
        
        guard let base = Double(providedBase) else {
            recoverySuggestion = "Please provide a numeric value."
            
            return nil
            
        }
        
        guard let base2 = Double(providedBase2) else {
            recoverySuggestion = "Please provide a numeric value."
            
            return nil
            
        }

        recoverySuggestion = "" // No error message
        return Addition(base: base, base2: base2)
        
        // MARK: Initializer(s)
        
        
        
    }
    
    init(
        providedBase: String = "",
        providedBase2: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedBase = providedBase
        self.providedBase2 = providedBase2
        self.recoverySuggestion = recoverySuggestion
    }

    
}

// Create an instance of the View Model
var viewModel = AdditionViewModel()
