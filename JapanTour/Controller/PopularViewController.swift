//
//  PopularViewController.swift
//  JapanTour
//
//  Created by CyberZen on 01.05.2021.
//

import UIKit


class PopularViewController: UIViewController {
    @IBOutlet weak var dataTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        dataTableView.delegate = self
        dataTableView.dataSource = self
        
        
        dataTableView.register(UINib(nibName: "PlacesTableViewCell", bundle: nil), forCellReuseIdentifier: "PlacesTableViewCell")
        // Do any additional setup after loading the view.
    }
    

    

}

//MARK: - TableView
extension PopularViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categoriesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTableView.dequeueReusableCell(withIdentifier: "PlacesTableViewCell", for: indexPath) as! PlacesTableViewCell
        
        
        return cell
    }
    
    
}
