//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Apple on 2020/02/07.
//  Copyright © 2020 kazuhiro.kabashima. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTextField.delegate = self
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // segueから遷移先のResultViewControllerを取得する
    let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているnameに、テキストフィールドの入力値を渡す
        resultViewController.name = myTextField.text!
    
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    // 他の画面から segue を使って戻ってきた時に呼ばれる
        
        }
    
}

