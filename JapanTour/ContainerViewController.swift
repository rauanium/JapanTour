//
//  ContainerViewController.swift
//  JapanTour
//
//  Created by CyberZen on 17.04.2021.
//

import UIKit

class ContainerViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    

    var categoriesData = ["🔥 Popular","🌳 Nature", "🍜 Food", "⛩ Culture"]
    @IBOutlet weak var collectionViewAsNav: UICollectionView!
    
    @IBOutlet weak var firstContainer: UIView!
    @IBOutlet weak var secondContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewAsNav.delegate = self
        collectionViewAsNav.dataSource = self

        collectionViewAsNav.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
        
        secondContainer.isHidden = true
    }
   
    
//    @IBAction func switcher(_ sender: UISegmentedControl) {
//
//
//        firstContainer.isHidden = true
//        secondContainer.isHidden = true
//        if sender.selectedSegmentIndex == 0{
//            firstContainer.isHidden = false
//
//
//            print("first switcher")
//        }else{
//            secondContainer.isHidden = false
//
//
//            print("second switcher")
//        }
//    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categoriesData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewAsNav.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        
        cell.categoryLabel.text = categoriesData[indexPath.row]
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        firstContainer.isHidden = true
        secondContainer.isHidden = true
        
        if (indexPath.row == 0){
            print(indexPath.row)
            firstContainer.isHidden = false
        }
        else if(indexPath.row == 1){
            secondContainer.isHidden = false
            print(indexPath.row)
            
        }
        
        else if(indexPath.row == 2){
            firstContainer.isHidden = false
            print(indexPath.row)
            
        }
        else if(indexPath.row == 3){
            print(indexPath.row)
            secondContainer.isHidden = false
        }
    }
    
    
    
    
    
    
    
    

}
