//
//  SecondView.swift
//  SwiftUINavigation
//
//  Created by Onur Bulut on 4.10.2023.
//

import SwiftUI

struct SecondView: View {
    
    @State var path : [Dog] = []
    
    var body: some View {
 
        
        NavigationStack(path: $path){
            List(dogs) { dog in
                
                NavigationLink(dog.name, value: dog)
                
             
            }.navigationDestination(for: Dog.self) { dog in
                
                VStack{
                    Text(dog.name)
                    Button("Go root") {
                        self.path = []
                        // popTheRooViewController
                    }
                    
                    
                    Button("Add to path") {
                        self.path = [dogs[0],dogs[1]]
                        // popTheRooViewController
                    }
                    
                    
                }
            
            }
            
            
            
            
        }
        
    }
}

#Preview {
    SecondView()
}
