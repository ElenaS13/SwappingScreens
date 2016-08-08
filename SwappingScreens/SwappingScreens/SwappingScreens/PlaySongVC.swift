//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Mac on 8/8/16.
//  Copyright © 2016 ElenaSidyakina. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    private var _selectedSong: String!

    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLbl.text = selectedSong

        // Do any additional setup after loading the view.
    }


}
