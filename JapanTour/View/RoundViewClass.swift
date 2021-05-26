//
//  RoundViewClass.swift
//  JapanTour
//
//  Created by CyberZen on 26.05.2021.
//

import Foundation
import UIKit
@IBDesignable
class RoundViewClass: UIView{
    @IBInspectable var cornerRadius: CGFloat = 10.0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    
    
}
