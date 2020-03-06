//
//  ViewController.swift
//  Delegate Protocol
//
//  Created by Fahim Rahman on 5/3/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//


/*
 
 Look carefully, here I have changed the first view background color but
 I didn't write any code or call any function to change the color here.
 So, what's going on here.
 I have used Delegate and Protocol Pattern here. It's One to One communication pattern
 when I navigate to the Second View Controller. The second vc send back some information to the first vc
 then when you go back to the first vc you see the change of background.
 
 
 Here the the first vc don't know what to do. The color changing command comes from the second vc.
 
 */
 
import UIKit

class FirstViewController: UIViewController, ChangeColorDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func buttonTappedForColorChange(color: UIColor) {
        self.view.backgroundColor = color
    }
}
