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
    let sodium:Double
    let carbs:Int
    let protein:Int
    
    init(_ names:String, _ calories:Int, _ fat:Int, _ cholesterol:Int, _ sodium:Double, _ carbs:Int, _ protein:Int) {
        self.names = names
        self.calories = calories
        self.fat = fat
        self.cholesterol = cholesterol
        self.sodium = sodium
        self.carbs = carbs
        self.protein = protein
    }
}

let Smartfood_White_Cheddar_Popcorn = JunkFood("Smartfood White Cheddar Popcorn",100,6,5,15,9,2)
let Doritos_Nacho_Cheese = JunkFood("Doritos Nacho Cheese",150,8,0,21,18,2)
let Ketchup_Chips = JunkFood("Ketchup Chips",150,9,0,19,15,2)
let Ruffles_BBQ = JunkFood("Ruffles BBQ",150,9,0,23,14,2)
let Cheetos_Crunchy = JunkFood("Cheetos Crunchy",160,10,0,25,16,1)
let Classic = JunkFood("Classic",160,10,0,17,15,2)
let Cheeto_Puffs = JunkFood("Cheeto Puffs",160,10,0,24,15,2)
let Ruffles_All_Dressed = JunkFood("Ruffles All Dressed",150,9,0,17,16,2)
let Coca_Cola = JunkFood("Coca Cola",140,0,0,2.5,39,39)
let Ginger_Ale = JunkFood("Ginger Ale",130,0,0,5,32,0)


let junkDictionary:[String:JunkFood] = ["Doritos Nacho Cheese":Doritos_Nacho_Cheese,"Smartfood White Cheddar Popcorn":Smartfood_White_Cheddar_Popcorn, "Ketchup Chips":Ketchup_Chips]

