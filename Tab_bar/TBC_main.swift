//
//  TBC_main.swift
//  Tab_bar
//
//  Created by İSMAİL AÇIKYÜREK on 30.06.2022.
//

import UIKit

class TBC_main: UITabBarController {
    
    @IBOutlet var TabBarOzel: UIView!
    @IBOutlet weak var v1: UIView!
    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var v2: UIView!
    @IBOutlet weak var favori: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(TabBarOzel)
        
        
        TabBarOzel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            TabBarOzel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 44),
            TabBarOzel.heightAnchor.constraint(equalToConstant: 84),
            TabBarOzel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            TabBarOzel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        
        
        ])
    }
    

    @IBAction func tabDegistr(_ sender: UIButton) {
        
        if sender.tag == 0 {
           
            star.image = UIImage(named: "starSecili")
            favori.image = UIImage(named: "favori")
            v2.backgroundColor = UIColor.systemGray4
            v1.backgroundColor = UIColor.systemGray6
       
            selectedIndex = sender.tag
        }
        if sender.tag == 1 {
            favori.image = UIImage(named: "favoriSecili")
            star.image = UIImage(named: "star")
            v1.backgroundColor = UIColor.systemGray4
            v2.backgroundColor = UIColor.systemGray6
            selectedIndex = sender.tag
         
        }
    }
    

}
