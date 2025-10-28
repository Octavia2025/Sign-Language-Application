//
//  AnimalsFoodNature.swift
//  SignLanguage
//
//  Created by Octavia Mucheche on 10/21/25.
//

import SwiftUI
import AVKit

struct AnimalsFoodNature: View {
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
                        if searchMatches("Chicken") {
                            ChickenVideoCard()
                        }
                        if searchMatches("Goat") {
                            GoatVideoCard()
                        }
                        if searchMatches("Cow") {
                            CowVideoCard()
                        }
                        if searchMatches("Fish") {
                            FishVideoCard()
                        }
                        if searchMatches("Horse") {
                            HorseVideoCard()
                        }
                        if searchMatches("Rabbit") {
                            RabbitVideoCard()
                        }
                        if searchMatches("Pig") {
                            /Users/octaviamucheche/Desktop/SignLanguage/SignLanguage/FishZ 2.mov                            PigVideoCard()
                        }
                        if searchMatches("Duck"){
                            DuckVideoCard()
                        }
                       
                        NatureVideosCard()
                        if searchMatches("Cave"){
                            CaveVideoCard()
                        }
                        if searchMatches("Sand"){
                            SandVideoCard()
                        }
                        if searchMatches("Tree"){
                            TreeVideoCard()
                        }
                        if searchMatches("Grass"){
                            GrassVideoCard()
                        }
                        if searchMatches("Water"){
                            WaterVideoCard()
                        }
                        if searchMatches("River"){
                            RiverVideoCard()
                        }
                        if searchMatches("Lightning"){
                            LightningVideoCard()
                        }
                        if searchMatches("Rain"){
                            RainVideoCard()
                        }
                    }
                    .padding()
                }
                .navigationTitle("Animals")
            }
        }
    }

    // Helper search filter
    private func searchMatches(_ name: String) -> Bool {
        return searchText.isEmpty || name.lowercased().contains(searchText.lowercased())
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

// Rabbit Video Card

struct RabbitVideoCard: View {
    let videoNames = ["RabbitZ 2", "RabbitA 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Rabbit - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}

// Pig Video Card

struct PigVideoCard: View {
    let videoNames = ["PigZ 2", "PigA 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Pig - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
// Duck Video Card

struct DuckVideoCard: View {
    let videoNames = ["DuckZ 2", "DuckA 2"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
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
    // Nature 
struct NatureVideosCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Nature")
                .font(.largeTitle.bold())
                .padding(.bottom, 10)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}



// Cave
struct CaveVideoCard: View {
    let videoNames = ["Cave ZSL", "Cave ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Cave - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
//Sand
struct SandVideoCard: View {
    let videoNames = ["Sand ZSL", "Sand ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Sand - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
//Tree
struct TreeVideoCard: View {
    let videoNames = ["Tree ZSL", "Tree ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Tree - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
//Grass
struct GrassVideoCard: View {
    let videoNames = ["Grass ZSL", "Grass ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Grass - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
// Water
struct WaterVideoCard: View {
    let videoNames = ["Water ZSL", "Water ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Water - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
//River
struct RiverVideoCard: View {
    let videoNames = ["River ZSL", "River ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "River - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
//Lightning
struct LightningVideoCard: View {
    let videoNames = ["Lightning ZSL", "Lightning ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Lightning - ZSL and ASL",
            videoNames: videoNames,
            currentIndex: $currentIndex,
            firstPlayer: $firstPlayer,
            secondPlayer: $secondPlayer,
            isFirstPlayerActive: $isFirstPlayerActive,
            rotationAngle: $rotationAngle
        )
    }
}
//Rain
struct RainVideoCard: View {
    let videoNames = ["Rain ZSL", "Rain ASL"]

    @State private var currentIndex = 0
    @State private var firstPlayer = AVPlayer()
    @State private var secondPlayer = AVPlayer()
    @State private var isFirstPlayerActive = true
    @State private var rotationAngle: Double = 0

    var body: some View {
        VideoCardView(
            title: "Rain - ZSL and ASL",
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

    
// Preview
#Preview {
    AnimalsFoodNature()
}
