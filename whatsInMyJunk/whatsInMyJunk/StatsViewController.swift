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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
