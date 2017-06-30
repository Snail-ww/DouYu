//
//  PageTitleVIew.swift
//  DouYuZhiBo
//
//  Created by WeiMac on 2017/6/28.
//  Copyright © 2017年 Snail. All rights reserved.
//

import UIKit

class PageTitleView: UIView {
    
    enum PageTitleViewStyle : Int {
        case PageTitleViewStyleEquiWidth
        case PageTitleViewStyleEquiGap
        case PageTitleViewStyleScroll
    }
    
    enum Attribute : String {
        case backgroundColor = "BackgroundColor"
        case font = "Font"
        case textColor = "TextColor"
    }
    
    fileprivate var style : PageTitleViewStyle
    fileprivate var titles : [String]
    fileprivate var normalAttributes : [String : Any]
    fileprivate var selectedAttributes : [String : Any]
    
    init(frame: CGRect, titles: [String], style: PageTitleViewStyle = PageTitleViewStyle.PageTitleViewStyleEquiGap, normalAttributes: [String: Any] = nil, selectedAttributes: [String: Any] ) {
        self.titles = titles
        self.style = style
        
        super.init(frame: frame)
        setupUI()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension PageTitleView {
    fileprivate func setupUI() {
        
    }
    
}

