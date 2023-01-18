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
                .minimumScaleFactor(0.1)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame( height: 150)
                .frame(maxWidth: .infinity)
            //      .border(.orange, width: 1)
                .padding()
            
            Spacer()
            
            
    
                Button("Show Message") {
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    if messageString == "" {
                        messageString = message1
                    }
                    else if messageString == message2 {
                        
                        messageString = message1
                    }
                    else {
                        messageString = message2
                    }
                    
                }
                .buttonStyle(.borderedProminent)
                
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
