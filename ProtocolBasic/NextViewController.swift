//
//  NextViewController.swift
//  ProtocolBasic
//
//  Created by 安達篤史 on 2020/06/20.
//  Copyright © 2020 Adachi Atsushi. All rights reserved.
//

import UIKit

protocol CatchProtocol {
    // ======= Delegateメソッドを定義 ==========
    func catchData(count:Int)
}

class NextViewController: UIViewController {

    // ========= 画面項目 =========
    @IBOutlet weak var label: UILabel!
    
    // カウンタ変数を定義
    var count = 0
    
    // Protocol宣言
    var delegate:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // ========= IBAction定義 =========
    // プラスボタン押下時の挙動
    // カウンタ変数をインクリメントし、ラブルに反映させる。
    @IBAction func plusAction(_ sender: Any) {
        count += 1
        
        label.text = String(count)
        
    }
    
    // 戻るボタンの挙動
    @IBAction func back(_ sender: Any) {
        // ViewControllerクラスに処理を移譲する(countを引き継ぐ)
        delegate?.catchData(count: count)
        
        dismiss(animated: true, completion: nil)
    }
}
