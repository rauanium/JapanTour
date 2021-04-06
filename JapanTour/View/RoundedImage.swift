//
//  RoundedImage.swift
//  JapanTour
//
//  Created by CyberZen on 06.04.2021.
//
import UIKit

import Foundation
@IBDesignable
class RoundedImage: UIImageView{
    @IBInspectable var cornerRadius: CGFloat = 10.0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var shadowOffset: CGSize = CGSize(){
        didSet{
            self.layer.shadowOffset = shadowOffset
        }
    }
    
}
