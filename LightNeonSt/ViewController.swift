//
//  ViewController.swift
//  LightNeonSt
//
//  Created by Yonghun Roh on 2022/11/07.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {
    
    

    @IBOutlet weak var contentsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
        }
        
        
    }
    func changeSetting(text: String, textColor: UIColor, backgroundColor: UIColor) {
        
    }
    
}

