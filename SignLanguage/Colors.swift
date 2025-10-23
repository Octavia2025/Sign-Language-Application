//
//  Colors.swift
//  SignLanguage
//
//  Created by Octavia Mucheche on 10/23/25.
//

import SwiftUI
import AVKit

struct Colors: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack {
                // Search Bar
                TextField("Search", text: $searchText)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)

                ScrollView {
                    VStack(spacing: 20) {
                        if searchMatches("Black") {
                           BlackVideoCard()
                        }
                        if searchMatches("Green") {
                            GreenVideoCard()
                        }
                        if searchMatches("Orange") {
                            OrangeVideoCard()
                        }
                        if searchMatches("Brown") {
                            BrownVideoCard()
                        }
                        if searchMatches("Red"){
                            RedVideoCard()
                        }
                        if searchMatches("Pink"){
                            PinkVideoCard()
                        }
                        if searchMatches("Purple"){
                            PurpleVideoCard()
                        }
                        if searchMatches("White"){
                            WhiteVideoCard()
                        }
                        
                    }
                    .padding()
                }
                .navigationTitle("Colors")
            }
        }
    }

    // Helper search filter
    private func searchMatches(_ name: String) -> Bool {
        return searchText.isEmpty || name.lowercased().contains(searchText.lowercased())
    }
}

//  Black Video Card
struct BlackVideoCard: View {
    let videoNames = ["Black ZSL", "Black ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Black - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

//  Green Video Card
struct GreenVideoCard: View {
    let videoNames = ["Green ZSL", "Green ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Green - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Orange Video Card
struct OrangeVideoCard: View {
    let videoNames = ["Orange ZSL", "Orange ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Orange - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Brown Video Card
struct BrownVideoCard: View {
    let videoNames = ["Brown ZSL 2", "Brown ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Brown - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Red Video Card
struct RedVideoCard: View {
    let videoNames = ["Red ZSL 2", "Red ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Red - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Pink Video Card
struct PinkVideoCard: View {
    let videoNames = ["Pink ZSL 2", "Pink ASL 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Pink - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Purple Video Card
struct PurpleVideoCard: View {
    let videoNames = ["Purple ZSL", "Purple ASL 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Purple - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// White Video Card
struct WhiteVideoCard: View {
    let videoNames = ["White ZSL", "White ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "White - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}


struct VideosCardView: View {
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

                // First Player view
                VideoPlayer(player: firstPlayer)
                    .opacity(isFirstPlayerActive ? 1 : 0)
                    .frame(height: 300)

                // Second Player view
                VideoPlayer(player: secondPlayer)
                    .opacity(isFirstPlayerActive ? 0 : 1)
                    .frame(height: 300)
            }
            .onAppear {
                // Load current and next into the two players
                guard !videoNames.isEmpty else { return }
                playVideo(named: videoNames[currentIndex], on: firstPlayer)

                let nextIndex = (currentIndex + 1) % videoNames.count
                playVideo(named: videoNames[nextIndex], on: secondPlayer)

                // Start the visible player
                if isFirstPlayerActive {
                    firstPlayer.play()
                } else {
                    secondPlayer.play()
                }
            }
            .onDisappear {
                // Pause both when view disappears
                firstPlayer.pause()
                secondPlayer.pause()
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
            let item = AVPlayerItem(url: url)
            player.replaceCurrentItem(with: item)
            
            player.currentItem?.preferredPeakBitRate = 0
        } else {
            print(" Video not found in bundle (expected .mov): \(name).mov")
        }
    }

  
    private func flipToNextVideo() {
        
        withAnimation {
            rotationAngle += 180
        }

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
           
            let currentlyActivePlayer = isFirstPlayerActive ? firstPlayer : secondPlayer
            currentlyActivePlayer.pause()
            currentlyActivePlayer.seek(to: .zero)

           
            currentIndex = (currentIndex + 1) % videoNames.count

            
            isFirstPlayerActive.toggle()

            
            let activePlayer = isFirstPlayerActive ? firstPlayer : secondPlayer
            let backgroundPlayer = isFirstPlayerActive ? secondPlayer : firstPlayer

            
            playVideo(named: videoNames[currentIndex], on: activePlayer)
            activePlayer.play()

           
            let nextIndex = (currentIndex + 1) % videoNames.count
            playVideo(named: videoNames[nextIndex], on: backgroundPlayer)
            backgroundPlayer.pause()
            backgroundPlayer.seek(to: .zero)
        }
    }
}

#Preview {
    Colors()
}
