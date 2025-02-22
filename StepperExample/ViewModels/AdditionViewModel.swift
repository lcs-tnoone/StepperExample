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
    
    var providedAugend: String
    var providedAddend: String
    
    //Holds error message
    var recoverySuggestion: String = ""
    
    //MARK: Computed Properties
    
    var addition: Addition? {
        //First check that the string in provided base can be converted into a number
        
        guard let augend = Double(providedAugend) else {
            recoverySuggestion = "Please provide a numeric value."
            
            return nil
            
        }
        
        guard let addend = Double(providedAddend) else {
            recoverySuggestion = "Please provide a numeric value."
            
            return nil
            
        }

        recoverySuggestion = "" // No error message
        return Addition(augend: augend, addend: addend)
        
        // MARK: Initializer(s)
        
        
        
    }
    
    init(
        providedAugend: String = "",
        providedAddend: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedAugend = providedAugend
        self.providedAddend = providedAddend
        self.recoverySuggestion = recoverySuggestion
    }

    
}

// Create an instance of the View Model
var viewModel = AdditionViewModel()
