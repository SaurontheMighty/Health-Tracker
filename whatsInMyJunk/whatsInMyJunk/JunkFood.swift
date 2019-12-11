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
let Coca_Cola = JunkFood("Coca Cola",140,0,0,2.5,39,0)
let Ginger_Ale = JunkFood("Ginger Ale",130,0,0,5,32,0)

let Pepsi = JunkFood("Pepsi",150,0,0,1.5,42,0)
let Crush_Grape = JunkFood("Crush Grape",170,0,0,5.5,44,0)
let Crush_Orange = JunkFood("Crush Orange",160,0,0,7,43,0)

let Mountain_Dew = JunkFood("Mountain Dew",170,0,0,3,46,0)
let Nestea = JunkFood("Nestea",60,0,0,1.5,17,0)

let Oasis_Orange_Juice = JunkFood("Oasis Orange Juice",80,0,0,2,21,0)


let junkDictionary:[String:JunkFood] = ["Doritos Nacho Cheese":Doritos_Nacho_Cheese,"Smartfood White Cheddar Popcorn":Smartfood_White_Cheddar_Popcorn, "Ketchup Chips":Ketchup_Chips, "Ruffles BBQ":Ruffles_BBQ, "Cheetos Crunchy":Cheetos_Crunchy, "Classic":Classic, "Cheeto Puffs":Cheeto_Puffs, "Ruffles All Dressed":Ruffles_All_Dressed, "Coca Cola":Coca_Cola, "Ginger Ale":Ginger_Ale, "Pepsi":Pepsi, "Crush Grape":Crush_Grape, "Crush Orange":Crush_Orange, "Mountain Dew":Mountain_Dew, "Nestea":Nestea, "Oasis Orange Juice":Oasis_Orange_Juice]



var caloriesTotal = 0
var fatTotal = 0
var cholesterolTotal = 0
var sodiumTotal = 0.0
var carbsTotal = 0
var proteinTotal = 0
