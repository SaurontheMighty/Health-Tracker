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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(caloriesTotal > 2500) {
            caloriesDaily.isHidden = false;
        } else {
            caloriesDaily.isHidden = true;
        }
        caloriesTotalLabel.text = String(caloriesTotal) + " cal"
        cholesterolTotalLabel.text = String(cholesterolTotal*10) + " mg"
        fatsTotalLabel.text = String(fatTotal) + " g"
        sodiumTotalLabel.text = String(sodiumTotal*10) + " mg"
        carbsTotalLabel.text = String(carbsTotal) + " g"
        proteinsTotalLabel.text = String(proteinTotal) + " g"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
