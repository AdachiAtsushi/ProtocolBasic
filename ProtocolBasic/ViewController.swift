//
//  ViewController.swift
//  ProtocolBasic
//
//  Created by 安達篤史 on 2020/06/20.
//  Copyright © 2020 Adachi Atsushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CatchProtocol {
    
    // ========= 画面項目の定義 =========
    @IBOutlet weak var label: UILabel!
    
    // カウンタ変数を定義
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // ========= Delegateメソッドの処理内容を定義 ==========
    func catchData(count: Int) {
        // NextViewControllerの値をラベルに渡す
        label.text = String(count)
    }
    
    // ========= IBActionを定義 =========
    // Nextボタン押下時の挙動
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
    }
    
}

