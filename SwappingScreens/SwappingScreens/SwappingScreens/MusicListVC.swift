//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Mac on 8/8/16.
//  Copyright © 2016 ElenaSidyakina. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue()
    }

    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        
        performSegue(withIdentifier: "PlaySongVC", sender: "Lithium")
    }
    @IBAction func backBtnPressed(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as?
            PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
                
            }
        
        }
    }
   

}
