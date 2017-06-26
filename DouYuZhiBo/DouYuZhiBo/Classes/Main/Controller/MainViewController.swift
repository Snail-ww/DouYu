//
//  MainViewController.swift
//  DouYuZhiBo
//
//  Created by 美丽的神话 on 17/6/24.
//  Copyright © 2017年 Snail. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置tabbar 的tintColor
        UITabBar.appearance().tintColor = UIColor.orange;
        // 添加子控制器
        addChildVC(name: "Home")
        addChildVC(name: "Live")
        addChildVC(name: "Attention")
        addChildVC(name: "Discover")
        addChildVC(name: "Person")
        
        // Do any additional setup after loading the view.
    }
    fileprivate func addChildVC(name: String) {
        // 获取storyboard的入口控制器
        let VC = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()!
        // 添加到tabbarController
        addChildViewController(VC)
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
