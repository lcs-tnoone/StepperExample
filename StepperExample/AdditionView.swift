//
//  AdditionExampleApp.swift
//  StepperExample
//
//  Created by Thomas Noone on 2025-02-16.
//

import SwiftUI

struct AdditionView: View {
    
    // MARK: Stored properties
    @State var base: Int = 1
    @State var baseTwo: Int = 1

    
    // MARK: Computed properties
    var answer: Int {
        return base + baseTwo
    }
        var body: some View {
        VStack (alignment: .trailing) {
            
            Spacer()
                Text("\(base)")
                    .font(.system(size: 74))
            Stepper(value: $base, label: {
                Text("Select First Number")
            })
            HStack {
                Text("+")
                    .font(.system(size: 74))
                
                Spacer()
                
                Text("\(baseTwo)")
                    .font(.system(size: 74))
            }

            Stepper(value: $baseTwo, label: {
                Text("Select Second Number")
            })

        
            Text("=")
                .font(.system(size: 96))

                Text("\(answer)")
                    .font(.system(size: 96))
                
          
            
            Spacer()
        }
        .padding()
    }
}
 
#Preview {
    AdditionView()
}
