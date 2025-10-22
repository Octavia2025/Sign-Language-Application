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
                    GoatVideoCard()
                    CowVideoCard()
                    FishVideoCard()
                    HorseVideoCard()
                }
                .padding()
            }
            .navigationTitle("Animals")
        }
    }
}

//  Chicken Video Card

struct ChickenVideoCard: View {
    let videoNames = ["ChickenZ 2", "ChickenA 3"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Chicken - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

//  Goat Video Card

struct GoatVideoCard: View {
    let videoNames = ["GoatZ 2", "GoatA 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Goat - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Cow Video Card

struct CowVideoCard: View {
    let videoNames = ["CowZ 2", "cowA 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Cow - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Fish Video Card

struct FishVideoCard: View {
    let videoNames = ["FishZ 2", "FishA 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Fish - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
// Horse Video Card
struct HorseVideoCard: View {
    let videoNames = ["HorseZ 2", "HorseA 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var thirdPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Horse - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
//Duck Video Card

struct DuckVideoCard: View {
    let videoNames = ["DuckZ 2", "DuckA 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var thirdPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Duck - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
// Video Card View

struct VideoCardView: View {
    let title: String
    let videoNames: [String]

    @Binding var currentIndex: Int
    @Binding var firstPlayer: AVPlayer
    @Binding var secondPlayer: AVPlayer
    @Binding var isFirstPlayerActive: Bool
    @Binding var rotationAngle: Double

    var body: some View {
        VStack {
            Text(title)
                .font(.title2.bold())
                .padding(.bottom, 5)

            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black.opacity(0.2))
                    .frame(height: 300)
                    .rotation3DEffect(.degrees(rotationAngle), axis: (x: 0, y: 1, z: 0))
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
                    .background(Color.blue)
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
            print("⚠️ Video \(name) not found!")
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

//  Preview

#Preview {
    AnimalsFoodNature()
}
