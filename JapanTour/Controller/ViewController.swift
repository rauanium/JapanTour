//
//  ViewController.swift
//  JapanTour
//
//  Created by CyberZen on 16.03.2021.
//

import UIKit


var categoriesData = ["🔥 Popular","🌳 Nature", "🍜 Food", "⛩ Culture"]

class ViewController: UIViewController {
    var selectedIndex = 0
    var indexPaths = [IndexPath]()
    @IBOutlet weak var popularVC: UIView!
    @IBOutlet weak var natureVC: UIView!
    @IBOutlet weak var foodVC: UIView!
    @IBOutlet weak var cultureVC: UIView!
    @IBOutlet weak var categorySwitcher: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        natureVC.isHidden = true
        foodVC.isHidden = true
        cultureVC.isHidden = true
        
        
        
       
}
    @IBAction func categoryChanged(_ sender: UISegmentedControl) {
        natureVC.isHidden = true
        foodVC.isHidden = true
        cultureVC.isHidden = true
        popularVC.isHidden = true
        
        
        if sender.selectedSegmentIndex == 0 {
            print("Popular")
            popularVC.isHidden = false
            
        }
        else if sender.selectedSegmentIndex == 1 {
            print("Nature")
            natureVC.isHidden = false
        }
        else if sender.selectedSegmentIndex == 2 {
            print("FOood")
            foodVC.isHidden = false
        }
        else if sender.selectedSegmentIndex == 3 {
            print("Culture")
            cultureVC.isHidden = false
        }
    }
    
}






