//
//  ContentView.swift
//  SignLanguage
//
//  Created by Octavia Mucheche on 10/20/25.
//
import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                
                Text("Compare ASL and ZSL")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .offset(y: 120)
                Text("Explore two different sign languages")
                    .foregroundColor(.black)
                    .offset(y: 120)
                   
                
                
                ZStack {
                    

                    
                    
                    Capsule()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 200, height: 50)
                        .padding()
                        .offset(y: 250)
                    NavigationLink("Start Comparing"){
                        Selection()
                            
                    }
                    .offset(y: 250)
                        
                }
                .frame(height: 300)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
