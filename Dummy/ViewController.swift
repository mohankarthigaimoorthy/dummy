//
//  ViewController.swift
//  Dummy
//
//  Created by Mohan K on 26/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flat: UILabel!
    
    @IBOutlet weak var my: UIImageView!
    
    @IBOutlet weak var boy: UIButton!
    
    
    @IBOutlet weak var girl:
    UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sector(_ sender: UIButton) {
        
        
    }
    
    @IBAction func hiiButton(_ sender: UIButton) {
        print("hello")
    }
}


extension UIButton {
    func setBackgroundColor(color: UIColor, forState: UIControl.State) {
        self.clipsToBounds = true  // add this to maintain corner radius
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(color.cgColor)
            context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
            let colorImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            self.setBackgroundImage(colorImage, for: forState)
        }
    }
}
