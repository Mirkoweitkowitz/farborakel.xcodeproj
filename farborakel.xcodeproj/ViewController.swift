//
//  ViewController.swift
//  farborakel.xcodeproj
//
//  Created by Mirko Weitkowitz on 16.08.22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        colorView.layer.cornerRadius = 120
    }
    func randomcolor() -> UIColor{
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        return UIColor(red:red, green:green, blue:blue, alpha: 1.0)
    }


    @IBAction func actionButton(_ sender: UIButton) {
        backgroundView.backgroundColor = randomcolor()
        
    }
    
    @IBAction func colorKreis(_ sender: UIButton) {
        colorView.backgroundColor = randomcolor()
    }
}

