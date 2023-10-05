//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Onur Bulut on 4.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            List {
                Section("Dogs"){
                    ForEach(dogs) {dog in
                        NavigationLink(dog.name, value: dog)

                        
                    }
                    
                }
                
                Section("Cats"){
                    
                    
                    
                    ForEach(cats) {cat in
                        NavigationLink(cat.name, value: cat)

                        
                    }
                    
                }
            }.navigationDestination(for: Dog.self) { dog in
                Text(dog.name)
            }
            .navigationDestination(for: Cat.self) { cat in
                Text(cat.name)
            }
    }
}
}

#Preview {
    ContentView()
}
