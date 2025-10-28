//
//  Food.swift
//  SignLanguage
//
//  Created by Octavia Mucheche on 10/28/25.
//

import SwiftUI
import AVKit

struct Food: View {
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
                       
                        if searchMatches("Apple"){
                            AppleVideoCard()
                        }
                        if searchMatches("Banana"){
                            BananaVideoCard()
                        }
                        if searchMatches("Bread"){
                            BreadVideoCard()
                        }
                        if searchMatches("Orange"){
                           OrangeVideoCard()
                        }
                        if searchMatches("Eggs"){
                            EggsVideoCard()
                        }
                        if searchMatches("Rice"){
                            RiceVideoCard()
                        }
                        if searchMatches("Mango"){
                                MangoVideoCard()
                        }
                        if searchMatches("Meat"){
                                MeatVideoCard()
                        }
                    }
                    .padding()
                }
                .navigationTitle("Food")
            }
        }
    }


    // Helper search filter
    private func searchMatches(_ name: String) -> Bool {
        return searchText.isEmpty || name.lowercased().contains(searchText.lowercased())
    }
}

//Apple
struct AppleVideoCard: View {
    let videoNames = ["Apple ZSL", "Apple ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Apple - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

//Banana
struct BananaVideoCard: View {
    let videoNames = ["Banana ZSL", "Banana ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Banana - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

//Bread
struct BreadVideoCard: View {
    let videoNames = ["Bread ZSL", "Bread ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Bread - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

//Orange
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

//Eggs
struct EggsVideoCard: View {
    let videoNames = ["Eggs ZSL", "Eggs ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Eggs - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
//Rice
struct RiceVideoCard: View {
    let videoNames = ["Rice ZSL", "Rice ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Rice - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

//Mango
struct MangoVideoCard: View {
    let videoNames = ["Mango ZSL", "Mango ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Mango - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Meat

struct MeatVideoCard: View {
    let videoNames = ["Meat ZSL", "Meat ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Meat - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Shared Video Card View

struct videosCardView: View {
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

                VideoPlayer(player: secondPlayer)
                    .opacity(isFirstPlayerActive ? 0 : 1)
                    .frame(height: 300)
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
        }
    }

    private func flipToNextVideo() {
        withAnimation { rotationAngle += 180 }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            currentIndex = (currentIndex + 1) % videoNames.count
            isFirstPlayerActive.toggle()
        }
        
       
    }
   
}

#Preview {
   Food()
}
