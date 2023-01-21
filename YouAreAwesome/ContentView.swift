//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Thomas Radford on 17/01/2023.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var soundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    
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
                var lastSoundNumber = soundNumber
                
                let message = ["You Are Great!",
                               "You Are Awesome!",
                               "You are Fantaastic",
                               "Fabulous, That's You",
                               "You make me Smile",
                               "When the Genius Bar Needs help, They call You"]
                
                lastMessageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBounds: message.count - 1)
                lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBounds: 9)
                lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBounds: 5)
                
                messageString = message[lastMessageNumber]
                imageName = "image\(lastImageNumber)"
                
                playSound(soundName: "sound\(lastSoundNumber)")
            }
            
        }
        .buttonStyle(.borderedProminent)
        
    }
    
    func nonRepeatingRandom(lastNumber: Int, upperBounds: Int) -> Int {
        var testNumber = 0
        repeat {
            testNumber = Int.random(in: 0...upperBounds)
        }while testNumber == lastNumber
        return testNumber
    }
    
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡 Could not read file named \(soundName)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        }catch {
            print("😡 ERROR: \(error.localizedDescription) creating audioPlayer")
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
