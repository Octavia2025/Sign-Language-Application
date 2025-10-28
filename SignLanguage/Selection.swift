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
                    AnimalsNature()
                    
                }
                NavigationLink("Food"){Food()}
                NavigationLink("Colors"){Colors()}
                NavigationLink("Feelings and emotions"){}
                NavigationLink("Days and Months"){}
                NavigationLink("Family and Relationships"){}
                NavigationLink("Health and Body parts"){}
                NavigationLink("School and work"){}
                NavigationLink("Daily activities, Actions, and Verbs"){}
            }
        }
    }
}

#Preview {
    Selection()
}
