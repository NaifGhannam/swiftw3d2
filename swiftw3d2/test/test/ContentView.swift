//
//  ContentView.swift
//  test
//
//  Created by Mac on 04/09/1446 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State private var names = ["Naif","Abdulah","ryahen","tahany","rawan"]
    
    @State private var filteredNames: [String] = []
    @State private var filterLetter = "A"
    
    
    var body: some View {
        VStack {
            TextField("Enter Letter", text: $filterLetter)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Filter Names") {
                
                filteredNames = names.filter { $0.hasPrefix(filterLetter) }
            }
            .padding()
            
            
            
                       List(filteredNames, id: \.self) { name in
                           Text(name)
                       }
                       .onAppear {
                           filteredNames = names
                       }
                   }
                   .padding()
        
        
            
        Button("Sort Alphabetically") {
                       filteredNames.sort { $0 < $1 }
                   }
                   .padding()
            
            
            
            
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

