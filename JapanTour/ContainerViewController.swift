//
//  ContainerViewController.swift
//  JapanTour
//
//  Created by CyberZen on 17.04.2021.
//

import UIKit

class ContainerViewController: UIViewController {

    let firstVC = FirstViewController()
    let secondVC = SecondViewController()
    
    var realFVC: FirstViewController?
    var realSVC: SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        secondVC.view.isHidden = true
        
        
        
    }
   
    
    @IBAction func switcher(_ sender: UISegmentedControl) {
//        firstVC.view.isHidden = true
//        secondVC.view.isHidden = true
        
        if sender.selectedSegmentIndex == 0{
            realSVC?.view.isHidden = true
            realFVC?.view.isHidden = false
            
//
//            firstVC.view.isHidden = false
            print("first switcher")
        }else{
            realSVC?.view.isHidden = false
            realFVC?.view.isHidden = true
            
//            secondVC.view.isHidden = false
            print("second switcher")
        }
    }
    
    
    

}
