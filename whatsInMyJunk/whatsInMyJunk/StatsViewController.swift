//
//  StatsViewController.swift
//  whatsInMyJunk
//
//  Created by Zain Lakhani on 2019-12-11.
//  Copyright © 2019 Zain Lakhani. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    @IBOutlet weak var caloriesTotalLabel: UILabel!
    @IBOutlet weak var cholesterolTotalLabel: UILabel!
    
    @IBOutlet weak var fatsTotalLabel: UILabel!
    
    @IBOutlet weak var proteinsTotalLabel: UILabel!
    @IBOutlet weak var carbsTotalLabel: UILabel!
    @IBOutlet weak var sodiumTotalLabel: UILabel!
    
    
    @IBOutlet weak var caloriesDaily: UIImageView!
    @IBOutlet weak var CholesterolDaily: UIImageView!
    @IBOutlet weak var FatsDaily: UIImageView!
    
    @IBOutlet weak var SodiumDaily: UIImageView!
    @IBOutlet weak var CarbsDaily: UIImageView!
    @IBOutlet weak var ProteinsDaily: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(caloriesTotal > 2000) {
            caloriesDaily.isHidden = false;
        } else {
            caloriesDaily.isHidden = true;
        }
        caloriesTotalLabel.text = String(caloriesTotal) + " cal"
        if(cholesterolTotal > 300) {
            CholesterolDaily.isHidden = false;
        } else {
            CholesterolDaily.isHidden = true;
        }
        cholesterolTotalLabel.text = String(cholesterolTotal*10) + " mg"
        if(fatTotal > 78) {
            FatsDaily.isHidden = false;
        } else {
            FatsDaily.isHidden = true;
        }
        fatsTotalLabel.text = String(fatTotal) + " g"
        if(sodiumTotal > 2300) {
            SodiumDaily.isHidden = false;
        } else {
            SodiumDaily.isHidden = true;
        }
        sodiumTotalLabel.text = String(sodiumTotal*10) + " mg"
        if(carbsTotal > 275) {
            CarbsDaily.isHidden = false;
        } else {
            CarbsDaily.isHidden = true;
        }
        carbsTotalLabel.text = String(carbsTotal) + " g"
        if(proteinTotal > 50) {
            ProteinsDaily.isHidden = false;
        } else {
            ProteinsDaily.isHidden = true;
        }
        proteinsTotalLabel.text = String(proteinTotal) + " g"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
