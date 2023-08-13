//
//  music.swift
//  PC1
//
//  Created by Ayla Ainayyah M on 25/05/23.
//

import Foundation
import AVFoundation
class music {
    static let shared = music()
    var musik: AVAudioPlayer?
    func playMusic() {
        if let path = Bundle.main.path(forResource: "Question-song", ofType: "mp3") {
            do {
                musik = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                musik?.numberOfLoops = -1
                musik?.volume = 0
                musik?.prepareToPlay()
                musik?.play()
            } catch {
                print("Failed: \(error.localizedDescription)")
            }
        }

    }
    func stopMusic(){
        musik?.stop()
        musik = nil
    }
}
