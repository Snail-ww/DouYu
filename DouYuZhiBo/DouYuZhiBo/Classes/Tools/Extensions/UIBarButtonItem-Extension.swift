//
//  UIBarButtonItem-Extension.swift
//  DouYuZhiBo
//
//  Created by WeiMac on 2017/6/26.
//  Copyright © 2017年 Snail. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    // 类方法
    class func createBarButtonItem(imageName: String, highImageName: String = "", size: CGSize = CGSize.zero) -> UIBarButtonItem {
        let btn = UIButton(type: UIButtonType.custom)
        btn.setImage(UIImage(named: imageName), for: UIControlState.normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: UIControlState.highlighted)
        }
        if size != CGSize.zero {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        } else {
            btn.sizeToFit()
        }
        return UIBarButtonItem(customView: btn)
    }
    
    // 便利构造函数
    convenience init(imageName: String, highImageName: String = "", size: CGSize = CGSize.zero) {
        let btn = UIButton(type: UIButtonType.custom)
        btn.setImage(UIImage(named: imageName), for: UIControlState.normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: UIControlState.highlighted)
        }
        if size != CGSize.zero {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        } else {
            btn.sizeToFit()
        }
        self.init(customView: btn)
    }
}

