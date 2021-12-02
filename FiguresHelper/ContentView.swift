//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Madison Dellamea on 12/1/21.
//

import SwiftUI

struct CircleView: View {
    
    //MARK: Stored Properties
    // "radius" is the name.
    // "Double is the data type.
    // By adding = 15.00    we are just providing a default value.
    // Input - we need this from the user
    // We want SwiftUI to update the user interface based on what the user selects.
    // To do this, we use a special piece of syntax
    // called a "property wrapper"
    //
    // @State
    //
    // THis marks the peroperty as being one that SwiftUI should "watch for changes.
    @State var radius : Double = 15.00
    
    //MARK: Computed Properties
    
    var area: Double {
    return Double.pi * radius * radius
    }
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    // $ changes value of property (radius) with the slider
                    Text("\(radius)")
                    Text("\( String(format: "%.0f", radius) )")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                //Sytax of $ says to use this property (radius) and BIND IT to this control
                // To "bind" means that when the control change, the property's value changes.
                Slider(value: $radius,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

            }
            
                        
            // Output
            Text("Area:")
                .bold()
            
            Text("\(area) suare units")
                .font(.title2)
            
            Text("\( String(format: "%.2f", area) square units")
                .font(.laregTitle)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
            CircleView()
    }
}
