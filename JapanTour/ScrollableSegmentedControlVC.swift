//
//  ScrollableSegmentedControlVC.swift
//  JapanTour
//
//  Created by CyberZen on 08.06.2021.
//

import UIKit
import ScrollableSegmentedControl
import HMSegmentedControl

class ScrollableSegmentedControlVC: UIViewController {


    
    @IBOutlet weak var segmentedControl: ScrollableSegmentedControl!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentedControl.segmentStyle = .textOnly
        
        
        segmentedControl.insertSegment(withTitle: "segment 0", at: 0)
        segmentedControl.insertSegment(withTitle: "segment 1", at: 1)
        segmentedControl.insertSegment(withTitle: "segment 2", at: 2)
        
                                       
        
            
        segmentedControl.underlineSelected = true
            
        segmentedControl.addTarget(self, action: #selector(segmentSelected(sender:)), for: .valueChanged)

        // change some colors
        segmentedControl.segmentContentColor = UIColor.white
        segmentedControl.selectedSegmentContentColor = UIColor.yellow
        segmentedControl.backgroundColor = UIColor.black
        
        // Turn off all segments been fixed/equal width.
        // The width of each segment would be based on the text length and font size.
        segmentedControl.fixedSegmentWidth = false
    }
        
    @objc func segmentSelected(sender:ScrollableSegmentedControl) {
        print("Segment at index \(sender.selectedSegmentIndex)  selected")
    }
}

