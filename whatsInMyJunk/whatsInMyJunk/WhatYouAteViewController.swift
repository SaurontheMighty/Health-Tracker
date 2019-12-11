//
//  WhatYouAteViewController.swift
//  whatsInMyJunk
//
//  Created by Ashish on 11/12/19.
//  Copyright © 2019 Zain Lakhani. All rights reserved.
//

import UIKit

class WhatYouAteViewController: UIViewController {
    var foodPic:UIImage = UIImage(named: "logo")!
    var foodText: String = ""
    var foodInfo: JunkFood = Doritos_Nacho_Cheese
    
    
    @IBOutlet weak var cholesterolLabel: UILabel!
    @IBOutlet weak var proteinLabel: UILabel!
    @IBOutlet weak var carbsLabel: UILabel!
    @IBOutlet weak var sodiumLabel: UILabel!
    @IBOutlet weak var fatLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var foodView: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        foodView.image = foodPic
        foodLabel.text = foodText
        caloriesLabel.text = String(foodInfo.calories) + " cal"
        fatLabel.text = String(foodInfo.fat) + " g"
        sodiumLabel.text = String(foodInfo.sodium*10) + " mg"
        carbsLabel.text = String(foodInfo.carbs) + " g"
        proteinLabel.text = String(foodInfo.protein) + " g"
        cholesterolLabel.text = String(foodInfo.cholesterol*10) + " mg"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        caloriesTotal += foodInfo.calories
        fatTotal += foodInfo.fat
        sodiumTotal += foodInfo.sodium
        carbsTotal += foodInfo.carbs
        proteinTotal += foodInfo.protein
        cholesterolTotal += foodInfo.cholesterol
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
