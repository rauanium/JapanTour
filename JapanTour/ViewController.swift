//
//  ViewController.swift
//  JapanTour
//
//  Created by CyberZen on 16.03.2021.
//

import UIKit


var categoriesData = ["🔥 Popular","🌳 Nature", "🍜 Food", "⛩ Culture"]

class ViewController: UIViewController {
   
    
    @IBOutlet weak var dataTableView: UITableView!
    
    @IBOutlet weak var categoriesCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCV.delegate = self
        categoriesCV.dataSource = self
        
        dataTableView.delegate = self
        dataTableView.dataSource = self
        
        
        categoriesCV.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
        
        dataTableView.register(UINib(nibName: "PlacesTableViewCell", bundle: nil), forCellReuseIdentifier: "PlacesTableViewCell")
        
}
    
    
    
    
    
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categoriesData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoriesCV.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        
        cell.categoryLabel.text = categoriesData[indexPath.row]
        
        return cell
    }
}

//tableview


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categoriesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTableView.dequeueReusableCell(withIdentifier: "PlacesTableViewCell", for: indexPath) as! PlacesTableViewCell
        
        
        return cell
    }
    
    
}
