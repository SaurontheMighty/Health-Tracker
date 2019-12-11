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
    @IBOutlet weak var foodView: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        foodView.image = foodPic
        foodLabel.text = foodText
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
