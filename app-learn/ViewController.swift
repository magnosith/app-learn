//
//  ViewController.swift
//  app-learn
//
//  Created by Student on 06/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buttonClick: UIButton!
    @IBOutlet weak var rocketImage: UIImageView!
    
    
    var count: Int = 0
    var counter: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapRocket(_:)))
        rocketImage.addGestureRecognizer(tapGestureRecognizer)
        
    }


    @IBAction func buttonStartClick(_ sender: Any) {
        count += 1
        titleLabel.text = "You're great!"
        buttonClick.setTitle("Click again", for: UIControl.State.normal)
        counter = String (count)
        print("Clicked here: \(counter) times")
    }
    
   
    @IBAction func tapRocket(_ sender: UITapGestureRecognizer) {
        rocketImage.transform = rocketImage.transform.rotated(by: .pi / 2)
        print("Girando! -->")
    }
    
}

