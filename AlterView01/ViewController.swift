//
//  ViewController.swift
//  AlterView01
//
//  Created by HSIN-HUNG WU on 2018/3/22.
//  Copyright © 2018年 HSIN-HUNG WU. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate {

    @IBAction func alert1Click(_ sender: UIButton) {
        
        //以建構式建立,only for ios8
        //let alertView:UIAlertView = UIAlertView(title: "確認視窗", message:"確定要結束應用程式嗎？", delegate:nil, cancelButtonTitle: "取消", otherButtonTitles:"確定")
        //alertView.show()
        
        // 建立一個提示框
        let alertController = UIAlertController(
            title: "確認視窗",
            message: "確定要結束應用程式嗎？",
            preferredStyle: .alert)
        
        // 建立[取消]按鈕
        let cancelAction = UIAlertAction(
            title: "取消",
            style: .cancel,
            handler: nil)
        alertController.addAction(cancelAction)
        
        // 建立[確定]按鈕
        let okAction = UIAlertAction(
            title: "確定",
            style: .default,
            handler: nil)
        alertController.addAction(okAction)
        
        // 顯示提示框
        self.present(
            alertController,
            animated: true,
            completion: nil)
        
        
        
    }
    @IBAction func alert2Click(_ sender: UIButton) {
        //建立物件並設定其屬性和按鈕, only for ios8
        let alertView:UIAlertView = UIAlertView()
        alertView.title = "確認視窗"
        alertView.message = "確定要結束應用程式嗎？"
        alertView.delegate = nil
        alertView.addButton(withTitle: "取消")
        alertView.addButton(withTitle: "確定")
        alertView.show()
        

        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

