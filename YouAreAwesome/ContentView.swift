//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Thomas Radford on 17/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        
        
        VStack {
                Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame( height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 1)
                .padding()
            
            Spacer()
            
            
            HStack {
                
                Button("Awesome") {
                    // this is the action when button is press
                    messageString = "You are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                .padding(20)
                Spacer()
                
                Button("Great") {
                    // this is the action when button is press
                    messageString = "You are Great!"
                }
                .buttonStyle(.borderedProminent)
                .padding(20)
            }
            .border(.purple, width: 1)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
