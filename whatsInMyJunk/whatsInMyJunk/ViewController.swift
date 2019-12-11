//
//  ViewController.swift
//  whatsInMyJunk
//
//  Created by Zain Lakhani on 2019-12-11.
//  Copyright © 2019 Zain Lakhani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    let model = Whatsinmyjunk();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func takePhoto(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
        let WhatsinmyJunkOutput = try? model.prediction(image: <#T##CVPixelBuffer#>)
        print(WhatsinmyJunkOutput!.classLabel)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)

        guard let image = info[.editedImage] as? UIImage else {
            print("No image found")
            return
        }

        // print out the image size as a test
        print(image.size)
    }
}

