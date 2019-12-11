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
    var foodThing:String = ""
    var foodInfoStruct: JunkFood = Doritos_Nacho_Cheese
    var tempImage:UIImage = UIImage(named:"logo")!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var imageProcess = UIImage(named:"logo.png")
    @IBAction func takePhoto(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
        let WhatsinmyJunkOutput = try? model.prediction(image: buffer(from: imageProcess!)!)
        print(WhatsinmyJunkOutput!.classLabelProbs)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        tempImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        picker.dismiss(animated: true)

        guard let image = info[.editedImage] as? UIImage else {
            print("No image found")
            return
        }
        let WhatsinmyJunkOutput = try? model.prediction(image: buffer(from: tempImage)!)
        foodThing = (WhatsinmyJunkOutput?.classLabel)!
        foodInfoStruct = junkDictionary[foodThing]!
//        print(junkDictionary[foodThing]!.calories)
        // print out the image size as a test
        print(image.size)
        performSegue(withIdentifier: "cameraSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "cameraSegue") {
            let whatYouAteClass = segue.destination as! WhatYouAteViewController
            whatYouAteClass.foodPic = tempImage
            whatYouAteClass.foodText = foodThing
            whatYouAteClass.foodInfo = foodInfoStruct
        }
    }
    
    func buffer(from image: UIImage) -> CVPixelBuffer? {
      let attrs = [kCVPixelBufferCGImageCompatibilityKey: kCFBooleanTrue, kCVPixelBufferCGBitmapContextCompatibilityKey: kCFBooleanTrue] as CFDictionary
      var pixelBuffer : CVPixelBuffer?
      let status = CVPixelBufferCreate(kCFAllocatorDefault, Int(image.size.width), Int(image.size.height), kCVPixelFormatType_32ARGB, attrs, &pixelBuffer)
      guard (status == kCVReturnSuccess) else {
        print("Im returning nil here\n")
        return nil
      }

      CVPixelBufferLockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags(rawValue: 0))
      let pixelData = CVPixelBufferGetBaseAddress(pixelBuffer!)

      let rgbColorSpace = CGColorSpaceCreateDeviceRGB()
      let context = CGContext(data: pixelData, width: Int(image.size.width), height: Int(image.size.height), bitsPerComponent: 8, bytesPerRow: CVPixelBufferGetBytesPerRow(pixelBuffer!), space: rgbColorSpace, bitmapInfo: CGImageAlphaInfo.noneSkipFirst.rawValue)

      context?.translateBy(x: 0, y: image.size.height)
      context?.scaleBy(x: 1.0, y: -1.0)

      UIGraphicsPushContext(context!)
      image.draw(in: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
      UIGraphicsPopContext()
      CVPixelBufferUnlockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags(rawValue: 0))

      return pixelBuffer
    }
    
    
    @IBAction func statsPressed(_ sender: Any) {
        performSegue(withIdentifier: "statsSegue" ,sender: self)
    }
    
}

