//
//  VideoView.swift
//  SwiftUITalk
//
//  Created by Robert Wallis on 12/30/19.
//  Copyright © 2019 Robert Wallis. All rights reserved.
//

import AVFoundation
import SwiftUI

struct VideoView: NSViewRepresentable {
    let url: String
    func makeNSView(context: Context) -> NSView {
        return VideoNSView(videoFile: url)
    }
    func updateNSView(_ nsView: NSView, context: NSViewRepresentableContext<VideoView>) {
    }
}

class VideoNSView: NSView{
    private let playerLayer = AVPlayerLayer()

    init(videoFile: String){
        super.init(frame: .zero)
        let url = URL(string: videoFile)!
        let player = AVPlayer(url: url)
        player.play()
        playerLayer.player = player
        if layer == nil {
            layer = CALayer()
        }
        layer?.addSublayer(playerLayer)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layout() {
        super.layout()
        playerLayer.frame = bounds
    }
}
