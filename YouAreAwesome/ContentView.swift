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
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
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
                var messages = ["You Are Great!",
                                "You Are Awesome!",
                                "You are Fantaastic",
                                "Fabulous, That's You",
                                "You make me Smile",
                                "When the Genius Bar Needs help, They call You"]
                
                messageString = messages[messageNumber]
                
                messageNumber += 1
                if messageNumber > messages.count - 1 { messageNumber = 0}
                
                imageName = "image\(imageNumber)"
                
                imageNumber += 1
                if imageNumber > 9 { imageNumber = 0}
                
         //       imageNumber = Int.random(in: 0...9)
               
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
