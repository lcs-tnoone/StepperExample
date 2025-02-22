//
//  AdditionView.swift
//  StepperExample
//
//  Created by Thomas Noone on 2025-02-22.
//

import SwiftUI

struct AdditionView: View {
   
    //MARK: Stored Properties
    //Holds view model, to track current state of data with the app
    
    @State var viewModel = AdditionViewModel()
    
    //MARK: Computed properties
    
    var body: some View {
        VStack{
            Spacer()
            
            //Output
            if let addition = viewModel.addition {
                HStack(alignment: .center) {
                    HStack(alignment: .top) {
                        
                        Text("\(addition.augend.formatted()) + \(addition.addend.formatted())")
                            .font(.system(size: 96))
                    }
                    HStack{
                        Text("=")
                            .font(.system(size: 96))
                        Text("\(addition.sum.formatted())")
                            .font(.system(size: 96))
                    }
                }
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .frame(height: 300)
                
            } else {
                
                // Show a message indicating that we are
                // awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate",
                    systemImage: "gear.badge.questionmark",
                    description: Text(viewModel.recoverySuggestion)
                )
                .frame(height: 300)
            }
                //Input
            TextField("Augend", text: $viewModel.providedAugend)
                .textFieldStyle(.roundedBorder)
            
            TextField("Addend", text: $viewModel.providedAddend)
                .textFieldStyle(.roundedBorder)
 
            // Extra space at bottom
            Spacer()
            }
        .padding()

        }
    }

#Preview {
    AdditionView()
}
