//
//  ViewController.swift
//  JapanTour
//
//  Created by CyberZen on 16.03.2021.
//

import UIKit


var categoriesData = ["🌳 Nature", "🍜 Food", "⛩ Culture"]

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        categories.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
        categories.delegate = self
        categories.dataSource = self
    }
    @IBOutlet weak var categories: UICollectionView!
    

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoriesData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categories.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        cell.categoryLabel.text = categoriesData[indexPath.row]
        print(categoriesData[indexPath.row])
        return cell
    }
    
}
