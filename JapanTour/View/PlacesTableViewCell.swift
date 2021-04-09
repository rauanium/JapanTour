//
//  PlacesTableViewCell.swift
//  JapanTour
//
//  Created by CyberZen on 21.03.2021.
//

import UIKit

class PlacesTableViewCell: UITableViewCell {

    @IBOutlet weak var blackGradient: UIView!
    @IBOutlet weak var placeImage: RoundedImage!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = blackGradient.bounds
        let initialColor = UIColor.black
        let finalColor = initialColor.withAlphaComponent(0.0)
        gradientLayer.colors = [initialColor.cgColor, finalColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 2.0)
        gradientLayer.endPoint = CGPoint(x: 0.6, y: 0.6)
        blackGradient.layer.addSublayer(gradientLayer)
        
        
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
