//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Madison Dellamea on 12/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
            Text("Circle")
            
            Text("Radius")
                
                 HStack {
                     Spacer()
                     Text("25.0")
                     Spacer()
                     
                     Slider()
                     
                 }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
