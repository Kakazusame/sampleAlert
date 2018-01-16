//
//  ViewController.swift
//  sampleAlert
//
//  Created by 嘉数涼夏 on 2018/01/15.
//  Copyright © 2018年 Suzuka Kakazu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //ボタンが押された時に発動するメソッド
    @IBAction func tapCheck(_ sender: UIButton) {
        //部品となるアラートを作成
        let alert = UIAlertController(title: "あなたはどっちが好きですか？", message: "犬 or 猫", preferredStyle: .alert)
        
        
        //アラートにOKボタンを追加
        //handler:OKボタンが押された時に行いたい処理を指定する場所
        //nilをセットすると、何も動作しない
        alert.addAction(UIAlertAction(title: "犬", style: .default, handler: {action in
            print("犬が押されました")
        }))
        alert.addAction(UIAlertAction(title: "猫", style: .default, handler: {action in
            print("猫が押されました")
        }))
        
        //アラートを表示 animatedはtrueかfalseで使うか使わないか決める
        present(alert, animated: false, completion: nil)
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

