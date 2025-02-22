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
    
    @State var viewmodel = AdditionViewModel()
    
    //MARK: Computed properties
    
    var body: some View {
        VStack{
            Spacer()
            
            //Output
            if let addition = viewmodel.addition {
                HStack(alignment: .center) {
                    HStack(alignment: .top) {
                        
                        Text("\(addition.base.formatted()) + \(addition.base2.formatted())")
                            .font(.system(size: 96))
                    }
                    HStack{
                        Text("=")
                            .font(.system(size: 96))
                        Text("\(addition.result.formatted())")
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
                    description: Text(viewmodel.recoverySuggestion)
                )
                .frame(height: 300)
            }
                //Input
            TextField("Base", text: $viewmodel.providedBase)
                .textFieldStyle(.roundedBorder)
            
            TextField("Base 2", text: $viewmodel.providedBase2)
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
