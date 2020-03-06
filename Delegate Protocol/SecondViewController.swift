//
//  SecondViewController.swift
//  Delegate Protocol
//
//  Created by Fahim Rahman on 5/3/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

/*
 
 The second vc knows what to do. This vc is actually changing the first vc's background color.
 
*/

import UIKit

protocol ChangeColorDelegate {
    func buttonTappedForColorChange(color: UIColor)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var delegate: ChangeColorDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "First VC color is white now"
        delegate.buttonTappedForColorChange(color: .white)
    }
}
