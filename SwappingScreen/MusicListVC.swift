//
//  MusicListVC.swift
//  SwappingScreen
//
//  Created by Hoang Ngoc Sinh on 2017/04/30.
//  Copyright © 2017 Hoang Ngoc Sinh. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
}
