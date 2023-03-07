//
//  ContentView.swift
//  Xylophone
//
//  Created by Philip Keller on 3/6/23.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @State private var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        VStack {
            Button {
                playSound(soundName: "C")
            } label: {
                Color(.red)
                    .cornerRadius(12)
            }
            Button {
                playSound(soundName: "D")
            } label: {
                Color(.orange)
                    .cornerRadius(12)
            }
            Button {
                playSound(soundName: "E")
            } label: {
                Color(.yellow)
                    .cornerRadius(12)
            }
            Button {
                playSound(soundName: "F")
            } label: {
                Color(.green)
                    .cornerRadius(12)
            }
            Button {
                playSound(soundName: "G")
            } label: {
                Color(.blue)
                    .cornerRadius(12)
            }
            Button {
                playSound(soundName: "A")
            } label: {
                Color(.systemIndigo)
                    .cornerRadius(12)
            }
            Button {
                playSound(soundName: "B")
            } label: {
                Color(.purple)
                    .cornerRadius(12)
            }
        }
        .padding()
    }
    
    func playSound (soundName: String) {
        guard let soundFile = NSDataAsset (name: soundName) else {
            print("😡 Could not read file named \(soundName)")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer (data: soundFile.data)
            audioPlayer.play ()
        } catch {
            print("😡 ERROR: \(error.localizedDescription) creating audioPlayer.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
