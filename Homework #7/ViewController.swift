//
//  ViewController.swift
//  Homework #7
//
//  Created by d.igihozo on 4/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    {
            didSet {
                
                imageView.isUserInteractionEnabled = true
                imageView.image = UIImage(named: "HourGlass")
            }
        }
    
    @IBAction func foundTap(_ sender: UITapGestureRecognizer) {
        
        messageLabel.text = "Tapped"
    }
    
    
    
    @IBAction func foundPinch(_ sender: UIPinchGestureRecognizer) {
        
        imageView.transform = imageView.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
        messageLabel.text = "Pinched"
        print("pinchinggggggg")
    }
    
    
    
    @IBAction func foundRotate(_ sender: UIRotationGestureRecognizer) {
        
        imageView.transform = imageView.transform.rotated(by: sender.rotation)
        sender.rotation = 0
        messageLabel.text = "Rotated"
        print("rotatinggggggggg")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(foundTap(_:)))
        imageView.addGestureRecognizer(tapGestureRecognizer)
        
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(foundPinch(_:)))
        imageView.addGestureRecognizer(pinchGestureRecognizer)
           
        let rotateGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(foundRotate(_:)))
        imageView.addGestureRecognizer(rotateGestureRecognizer)
      
          
    }


}

