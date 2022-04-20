//
//  DetailsVC.swift
//  ColorsApp
//
//  Created by admin on 20/04/22.
//

import UIKit

class DetailsVC: UIViewController {
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .cyan
    }
}
