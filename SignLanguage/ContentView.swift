//
//  ContentView.swift
//  SignLanguage
//
//  Created by Octavia Mucheche on 10/20/25.
//
import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()

            
            ZStack {
                
                HStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.blue.opacity(0.3))
                    Rectangle()
                        .fill(Color.cyan.opacity(0.3))
                }
                
                
                HStack {
                    Image("k1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()

                    Image("k2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                }
            }
            .frame(height: 300)
        }
        .padding()
    }
}
