//
//  ColorsTableVC.swift
//  ColorsApp
//
//  Created by admin on 20/04/22.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []
    override func viewDidLoad() {
        super.viewDidLoad()

      createRandomColors()
    }
    func createRandomColors(){
        for _ in 0..<50{
            colors.append(createRandomColor())
        }
    }
    
    func createRandomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in:0...1),
                                  green: CGFloat.random(in:0...1),
                                  blue: CGFloat.random(in:0...1),
                                  alpha: 1)
        
        return randomColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! DetailsVC
        destVC.color = sender as! UIColor
    }
}
extension ColorsTableVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else{return UITableViewCell()}
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        
        performSegue(withIdentifier: "ToColorsDetailVc", sender: color)
    }
}
