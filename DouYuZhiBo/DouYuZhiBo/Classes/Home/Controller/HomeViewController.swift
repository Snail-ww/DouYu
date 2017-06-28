//
//  HomeViewController.swift
//  DouYuZhiBo
//
//  Created by WeiMac on 2017/6/26.
//  Copyright © 2017年 Snail. All rights reserved.
//

import UIKit

let kScreenW = UIScreen.main.bounds.width
let kScreemH = UIScreen.main.bounds.height


class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController {
    fileprivate func setupUI() {
        setupNavigationBar()
    }
    fileprivate func setupNavigationBar() {
        navigationController?.navigationBar.barTintColor = UIColor.orange
        
        let searchBtn = UIButton(type: UIButtonType.custom)
        searchBtn.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 30, height: 30))
        searchBtn.setImage(UIImage(named: "home_search_icon"), for: UIControlState.normal)
        
        let QRCodeBtn = UIButton(type: UIButtonType.custom)
        QRCodeBtn.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 35, height: 30))
        QRCodeBtn.setImage(UIImage(named: "home_QRCode_icon"), for: UIControlState.normal)
  
        let titleView = UITextField(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: kScreenW, height: 30)))
        titleView.backgroundColor = UIColor.white
        titleView.leftViewMode = UITextFieldViewMode.always
        titleView.leftView = searchBtn
        titleView.rightViewMode = UITextFieldViewMode.always
        titleView.rightView = QRCodeBtn
        titleView.layer.masksToBounds = true
        titleView.layer.cornerRadius = 15.0
        navigationItem.titleView = titleView
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "home_logo")
        
        let newGameBtn = UIBarButtonItem(imageName: "home_newGame", highImageName: "home_newGame_H", size: CGSize(width: 30, height: 30))
        let historyBtn = UIBarButtonItem(imageName: "home_history", highImageName: "home_history_H", size: CGSize(width: 30, height: 30))
        navigationItem.rightBarButtonItems = [historyBtn, newGameBtn]
        
    }
}
