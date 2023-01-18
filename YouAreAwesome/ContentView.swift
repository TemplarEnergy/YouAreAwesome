//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Thomas Radford on 17/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    
    var body: some View {
        
        
        VStack {
                Spacer()
            Image(systemName: "speaker.wave.2", variableValue: 0.550)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.508, saturation: 0.253, brightness: 0.963))
                .cornerRadius(30)
                .shadow( color: .gray, radius: 30, x:20, y:20)
                .overlay(RoundedRectangle(cornerRadius: 30)
                    .stroke(.teal, lineWidth: 1)
                )
                
                .padding()
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.1)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame( height: 150)
                .frame(maxWidth: .infinity)
          //      .border(.orange, width: 1)
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
