//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by Kenta Yamada on 2021/03/19.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var countUpLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ラベルの文字を0と表示したい
        countUpLabel.text = "0"
    }

    @IBAction func plus(_ sender: Any) {
        //カウントアップさせたい
        count = count + 1
        //ラベルに文字を反映したい(数字)
        countUpLabel.text = String(count)
        //もし10以上になったら、色を黄色にしたい
        if count >= 10 {
            changeTextColor()
        }
    }
  
    
    @IBAction func minus(_ sender: Any) {
        //カウントダウンさせたい
        count = count - 1
        //ラベルに文字を反映したい(数字)
        countUpLabel.text = String(count)
        //もし色が0以下になったら、色を白色に変更したい
        if count <= 0 {
            resetColor()
        }
    }
    
    //新しくメソッドが作成された
    func changeTextColor(){
        
        countUpLabel.textColor = .yellow
    }
    
    func resetColor(){
        
        countUpLabel.textColor = .white
    }
    
}

