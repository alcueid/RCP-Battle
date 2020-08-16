//
//  ViewController.swift
//  RCP Battle
//
//  Created by alcueid on 2020/08/16.
//  Copyright © 2020 alcueid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    // 勝利数変数を宣言
    var winCnt = 0
    // 試合数変数を宣言
    var gameCnt = 0
    // 敗北数の変数宣言
    var loseCnt = 0
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var msgLabel1: UILabel!
    @IBOutlet weak var msgLabel2: UILabel!
    
    @IBAction func userRcpButton1(_ sender: Any) {
        // プレイヤーのRCP画像をセット
        playerImageView.image = UIImage(named: "gu")
        // 試合数を加算
        gameCnt += 1
        // コンピュータのじゃんけんを乱数で作成
        var comRcpNumber = 0;
        comRcpNumber = Int.random(in: 0..<3)
        if comRcpNumber == 0 {
            comImageView.image = UIImage(named: "gu")
            msgLabel2.text = "AIKO"
        } else if comRcpNumber == 1 {
            comImageView.image = UIImage(named: "choki")
            msgLabel2.text = "Your Win!"
            // 勝利数を加算
            winCnt += 1

        } else if comRcpNumber == 2 {
            comImageView.image = UIImage(named: "pa")
            msgLabel2.text = "Your Lose!"
        } else {
            // Error
        }
        
        // 敗北数を算出
        loseCnt = gameCnt - winCnt
        // 試合数等をを表示
        msgLabel1.text = "Games:" + gameCnt.description +
            " Wins:" + winCnt.description +
            " Lose:" + loseCnt.description
    }
    
    
    @IBAction func userRcpButton2(_ sender: Any) {
        // プレイヤーのRCP画像をセット
        playerImageView.image = UIImage(named: "choki")
        // 試合数を加算
        gameCnt += 1
        // コンピュータのじゃんけんを乱数で作成
        var comRcpNumber = 0;
        comRcpNumber = Int.random(in: 0..<3)
        if comRcpNumber == 0 {
            comImageView.image = UIImage(named: "gu")
            msgLabel2.text = "Your Lose!"
        } else if comRcpNumber == 1 {
            comImageView.image = UIImage(named: "choki")
            msgLabel2.text = "Draw"
        } else if comRcpNumber == 2 {
            comImageView.image = UIImage(named: "pa")
            msgLabel2.text = "Your Win!"
            // 勝利数を加算
            winCnt += 1
        } else {
            // Error
        }
        // 敗北数を算出
        loseCnt = gameCnt - winCnt
        // 試合数等をを表示
        msgLabel1.text = "Games:" + gameCnt.description +
            " Wins:" + winCnt.description +
            " Lose:" + loseCnt.description
    }
    
    @IBAction func userRcpButton3(_ sender: Any) {
        // プレイヤーのRCP画像をセット
        playerImageView.image = UIImage(named: "pa")
        // 試合数を加算
        gameCnt += 1
        // コンピュータのじゃんけんを乱数で作成
        var comRcpNumber = 0;
        comRcpNumber = Int.random(in: 0..<3)
        if comRcpNumber == 0 {
            comImageView.image = UIImage(named: "gu")
            msgLabel2.text = "Your Win!"
            // 勝利数を加算
            winCnt += 1
        } else if comRcpNumber == 1 {
            comImageView.image = UIImage(named: "choki")
            msgLabel2.text = "Your Lose!"
        } else if comRcpNumber == 2 {
            comImageView.image = UIImage(named: "pa")
            msgLabel2.text = "Draw"
        } else {
            // Error
        }
        // 敗北数を算出
        loseCnt = gameCnt - winCnt
        // 試合数等をを表示
        msgLabel1.text = "Games:" + gameCnt.description +
            " Wins:" + winCnt.description +
            " Lose:" + loseCnt.description
    }
    
    
    @IBAction func restButton(_ sender: Any) {
        gameCnt = 0
        winCnt = 0
        loseCnt = 0
        msgLabel1.text = "Games:" + gameCnt.description + " Wins:" + winCnt.description + " Lose:" + loseCnt.description
        msgLabel2.text = "Result was Reseted"
    }
}

