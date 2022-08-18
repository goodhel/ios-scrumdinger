//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by Yudhi Kusuma on 18/08/22.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
