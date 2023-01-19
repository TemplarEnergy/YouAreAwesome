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
                let message2 = "You Are Awesome!"
                
                messageString = (messageString == message1 ? message2 : message1)
              
                imageName = "image\(imageNumber)"
                
                imageNumber += 1
                if imageNumber > 9 {
                    imageNumber = 0
                }
                print(imageNumber)
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
