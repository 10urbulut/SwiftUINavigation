//
//  Dog.swift
//  SwiftUINavigation
//
//  Created by Onur Bulut on 4.10.2023.
//

import Foundation
struct Dog : Identifiable, Hashable {
    var id = UUID()
    let name : String
}
let dogs : [Dog] = [Dog(name: "Barley"), Dog(name: "Lucky"), Dog(name: "Jack"), Dog(name: "Daisy")]
