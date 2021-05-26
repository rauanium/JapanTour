//
//  ProfileViewController.swift
//  JapanTour
//
//  Created by CyberZen on 08.04.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var testingView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = testingView.bounds
        let initialColor = UIColor.black
        let finalColor = initialColor.withAlphaComponent(0.0)
        gradientLayer.colors = [initialColor.cgColor, finalColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 2.0)
        gradientLayer.endPoint = CGPoint(x: 0.6, y: 0.6)
        testingView.layer.addSublayer(gradientLayer)
        
        
    }
    

}
