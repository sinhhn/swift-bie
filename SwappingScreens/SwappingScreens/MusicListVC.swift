//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Hoang Ngoc Sinh on 2017/05/01.
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

    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTilte = "Nothing Gonna Change My Love For You"
        performSegue(withIdentifier: "PlaySongVC", sender: songTilte)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
}
