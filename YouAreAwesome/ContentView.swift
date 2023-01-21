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
            
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            
            
            Button("Show Image") {
                let lastImageNumber = imageNumber
                let lastMessageNumber = messageNumber
                
                let message = ["You Are Great!",
                                "You Are Awesome!",
                                "You are Fantaastic",
                                "Fabulous, That's You",
                                "You make me Smile",
                                "When the Genius Bar Needs help, They call You"]
                
                
                repeat {
                    messageNumber = Int.random(in: 0...message.count - 1)
                } while messageNumber == lastMessageNumber
                
                repeat {
                    imageNumber = Int.random(in: 0...9)
                }while imageNumber == lastImageNumber
                
                
                messageString = message[messageNumber]
                
                imageName = "image\(imageNumber)"
                
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
