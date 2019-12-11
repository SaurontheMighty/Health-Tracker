//
//  JunkFood.swift
//  whatsInMyJunk
//
//  Created by Zain Lakhani on 2019-12-11.
//  Copyright © 2019 Zain Lakhani. All rights reserved.
//

import Foundation
struct JunkFood {
    let names:String
    let calories:Int
    let fat:Int
    let cholesterol:Int
    let sodium:Int
    let carbs:Int
    let protein:Int
    
    init(_ names:String, _ calories:Int, _ fat:Int, _ cholesterol:Int, _ sodium:Int, _ carbs:Int, _ protein:Int) {
        self.names = names
        self.calories = calories
        self.fat = fat
        self.cholesterol = cholesterol
        self.sodium = sodium
        self.carbs = carbs
        self.protein = protein
    }
}

Smartfood_White_Cheddar_Popcorn = JunkFood("Smartfood White Cheddar Popcorn",100,6)

