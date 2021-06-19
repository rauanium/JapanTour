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
    @IBOutlet weak var categoriesCV: UICollectionView!
    var selectedLabel = CategoriesCollectionViewCell()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        categoriesCV.delegate = self
        categoriesCV.dataSource = self
        categoriesCV.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
        
        natureVC.isHidden = true
        foodVC.isHidden = true
        cultureVC.isHidden = true
        
        
        
       
}
    
}


//MARK: - Collection View


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categoriesData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoriesCV.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        
        
        
        
        cell.categoryLabel.text = categoriesData[indexPath.row]
        
        if (selectedIndex == indexPath.row){
            cell.categoryLabel.backgroundColor = UIColor.yellow
        }else{
            cell.categoryLabel.backgroundColor = UIColor.black
        }
        
        return cell
    }
    
    
    
    
    
    
    
    // Categories visibility
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row
        
        
        
        
        
        
        
//        categoriesCV.reloadItems(at: indexPaths)
//        collectionView.reloadData()
        
        
        
        natureVC.isHidden = true
        foodVC.isHidden = true
        cultureVC.isHidden = true
        popularVC.isHidden = true
        if (indexPath.row == 0){
            print(indexPath.row)
            popularVC.isHidden = false
            
        }
        else if(indexPath.row == 1){
            natureVC.isHidden = false
            print(indexPath.row)
            
        }
        
        else if(indexPath.row == 2){
            foodVC.isHidden = false
            print(indexPath.row)
            
        }
        else if(indexPath.row == 3){
            print(indexPath.row)
            cultureVC.isHidden = false
        }
    }
    
    
    
    
}


