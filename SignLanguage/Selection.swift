//
//  Selection.swift
//  SignLanguage
//
//  Created by Octavia Mucheche on 10/20/25.
//

import SwiftUI

struct Selection: View {
    var body: some View {
        NavigationView{
            List(){
                
                NavigationLink("Animals, Food and Nature"){
                    AnimalsFoodNature()
                    
                }
                NavigationLink("Emotions"){}
                NavigationLink("Weather"){}
                NavigationLink("Colors"){Colors()}
                NavigationLink("Feelings and emotions"){}
                NavigationLink("Daily activities, Actions, and Verbs"){}
                NavigationLink("Greetings"){}
                NavigationLink("Family and Relationships"){}
                NavigationLink("Health and Body parts"){}
                NavigationLink("Recreation and  hobbies"){}
                NavigationLink("School and work"){}
                
            }
        }
    }
}

#Preview {
    Selection()
}
