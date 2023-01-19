//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Thomas Radford on 17/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    
    var body: some View {
        
        
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
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
            
            
    
                Button("Show Image") {
                    let message1 = "You Are Great!"
                    let message2 = "You Ae Awesome!"
//                    if messageString == message1 {
//                        messageString = message2
//                    }
//                    else {
//                        messageString = message1
//                    }
                    messageString = (messageString == message1 ? message2 : message1)
                    imageName = (imageName == "image0" ? "image1" : "image0")
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
