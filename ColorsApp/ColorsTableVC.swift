//
//  ColorsTableVC.swift
//  ColorsApp
//
//  Created by admin on 20/04/22.
//

import UIKit

class ColorsTableVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func tempButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ToColorsDetailVc", sender: nil)
    }
    
    
}
