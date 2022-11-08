//
//  SettingViewController.swift
//  LightNeonSt
//
//  Created by Yonghun Roh on 2022/11/08.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
    func changeSetting(text: String, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowBTN: UIButton!
    @IBOutlet weak var puppleBTN: UIButton!
    @IBOutlet weak var blackBTN: UIButton!
    @IBOutlet weak var greenBTN: UIButton!
    @IBOutlet weak var blueBTN: UIButton!
    @IBOutlet weak var orageBTN: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tapTextColorBTN(_ sender: UIButton) {
        if sender == self.yellowBTN {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        } else if sender == self.puppleBTN {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    @IBAction func tapBackgroundColorBTN(_ sender: UIButton) {
        if sender == self.blackBTN {
            self.changeBackgroundColor(color: .black)
            self.backgroundColor = .black
        } else if sender == self.blueBTN {
            self.changeBackgroundColor(color: .blue)
            self.backgroundColor = .blue
        } else {
            self.changeBackgroundColor(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
    @IBAction func tapSaveBTN(_ sender: UIButton) {
        self.delegate?.changeSetting(
            text: self.textField.text!,
            textColor: self.textColor,
            backgroundColor: self.backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
        
        
    }
    private func changeTextColor(color: UIColor) {
        self.yellowBTN.alpha = color == UIColor.yellow ? 1 : 0.2
        self.puppleBTN.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenBTN.alpha = color == UIColor.green ? 1 : 0.2
                
    }
    
    private func changeBackgroundColor(color: UIColor) {
        self.blackBTN.alpha = color == UIColor.black ? 1 : 0.2
        self.blueBTN.alpha = color == UIColor.blue ? 1 : 0.2
        self.orageBTN.alpha = color == UIColor.orange ? 1 : 0.2
        
    }
}
