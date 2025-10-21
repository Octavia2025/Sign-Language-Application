//
//  AnimalsFoodNature.swift
//  SignLanguage
//
//  Created by Octavia Mucheche on 10/21/25.
//

import SwiftUI
import AVKit



struct AnimalsFoodNature: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ChickenVideoCard()
                    LikeVideoCard()

                    
                }
                .padding()
            }
            .navigationTitle("Animals")
        }
    }
}



struct ChickenVideoCard: View {
    let videoNames = ["GoatZ 2", "GoatA 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VStack {
            Text("Goat - ZSL and ASL")
                .font(.title2.bold())
                .padding(.bottom, 5)

            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black.opacity(0.2))
                    .frame(height: 300)
                    .rotation3DEffect(
                        .degrees(rotationAngle),
                        axis: (x: 0, y: 1, z: 0)
                    )
                    .animation(.easeInOut(duration: 0.6), value: rotationAngle)

                VideoPlayer(player: firstPlayer)
                    .opacity(isFirstPlayerActive ? 1 : 0)
                    .frame(height: 300)
                    .animation(.easeInOut(duration: 0.6), value: isFirstPlayerActive)

                VideoPlayer(player: secondPlayer)
                    .opacity(isFirstPlayerActive ? 0 : 1)
                    .frame(height: 300)
                    .animation(.easeInOut(duration: 0.6), value: isFirstPlayerActive)
            }
            .onAppear {
                playVideo(named: videoNames[currentIndex], on: firstPlayer)
                let nextIndex = (currentIndex + 1) % videoNames.count
                playVideo(named: videoNames[nextIndex], on: secondPlayer)
                firstPlayer.play()
            }

            Button(action: flipToNextVideo) {
                Text("Flip to ASL")
                    .font(.subheadline)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.top, 8)
        }
        .padding()
    }

    private func playVideo(named name: String, on player: AVPlayer) {
        if let url = Bundle.main.url(forResource: name, withExtension: "mov") {
            player.replaceCurrentItem(with: AVPlayerItem(url: url))
            player.seek(to: .zero)
        } else {
            print("Video \(name) not found!")
        }
    }

    private func flipToNextVideo() {
        withAnimation {
            rotationAngle += 180
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            currentIndex = (currentIndex + 1) % videoNames.count
            let nextIndex = (currentIndex + 1) % videoNames.count

            if isFirstPlayerActive {
                playVideo(named: videoNames[currentIndex], on: secondPlayer)
                secondPlayer.play()
                firstPlayer.pause()
                playVideo(named: videoNames[nextIndex], on: firstPlayer)
            } else {
                playVideo(named: videoNames[currentIndex], on: firstPlayer)
                firstPlayer.play()
                secondPlayer.pause()
                playVideo(named: videoNames[nextIndex], on: secondPlayer)
            }

            isFirstPlayerActive.toggle()
        }
    }
}

// MARK: - Like Video Card

struct LikeVideoCard: View {
    @State private var player = AVPlayer()

    var body: some View {
        VStack {
            Text("Chicken - ZSL and ASL")
                .font(.title2)
                .bold()
                .padding(.bottom, 5)

            VideoPlayer(player: player)
                .frame(height: 300)
                .cornerRadius(10)
                .onAppear {
                    if let url = Bundle.main.url(forResource: "ChickenZ 2", withExtension: "mov") {
                        player.replaceCurrentItem(with: AVPlayerItem(url: url))
                        player.play()
                    } else {
                        print("LikeVideo.mov not found!")
                    }
                }
        }
        .padding()
    }
}

#Preview {
    AnimalsFoodNature()
}
