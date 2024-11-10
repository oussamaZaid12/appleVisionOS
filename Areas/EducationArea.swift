//
//  EducationArea.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import SwiftUI
import AVKit

struct EducationArea: View {
    var body: some View {
        NavigationView {
            List(lesson.allCases) { lesson in
                NavigationLink(destination: VideoArea(lesson: lesson)) {
                    HStack {
                        Image(systemName: "video")
                        VStack(alignment: .leading) {
                            Text(lesson.title)
                                .font(.headline)
                            Text(lesson.more)
                                .font(.subheadline)
                                .lineLimit(2)
                        }
                    }
                }
            }
            .navigationTitle("Lessons")
        }
    }
}

struct VideoArea: View {
    var lesson: lesson
    @State var player: AVPlayer
    
    init(lesson: lesson) {
        self.lesson = lesson
        if let videoURL = Bundle.main.url(forResource: lesson.videoName, withExtension: nil) {
            self._player = State(initialValue: AVPlayer(url: videoURL))
        } else {
            self._player = State(initialValue: AVPlayer())
            print("Video file \(lesson.videoName) not found.")
        }
    }
    
    @State var isPlaying = false
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .frame(height: 800)
            
            Button {
                isPlaying ? player.pause() : player.play()
                isPlaying.toggle()
                if !isPlaying {
                    player.seek(to: .zero)
                }
            } label: {
                Image(systemName: isPlaying ? "stop" : "play")
                    .padding(5)
            }
            .padding(10)
        }
        .onAppear {
            isPlaying = false
        }
        .onDisappear {
            player.pause()
        }
        .navigationTitle(lesson.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    EducationArea()
}

