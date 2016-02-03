//
//  TopTitleView.swift
//  TopTabBar
//
//  Created by Hou's Mac on 16/2/3.
//  Copyright © 2016年 霍伟元. All rights reserved.
//

import UIKit
class TopItemView: UIScrollView {
    
    var views: [UIView]! {
        didSet{
            
        }
    }
    
    
    func addItemView(view: UIView) {
        self.views.append(view)
    }
    
    var bottomWidth: CGFloat! = 2 {
        didSet{
            
        }
    }
    
    var bottomPadding: CGFloat! = 1 {
        didSet{
//            self.
        }
    }
    
    var bottomColor: UIColor! = UIColor.redColor() {
        didSet{
            if self.bottomColor != oldValue {
                self.bottomView.backgroundColor = self.bottomColor
            }
        }
    }
    
    lazy private var scrollView: UIScrollView! = {
        let tmp = UIScrollView(frame: self.bounds)
        return tmp
    }()
    
    lazy var bottomView: UIView! = {
       let tmp = UIView(frame: CGRectMake(0,CGRectGetHeight(self.bounds)-self.bottomPadding-self.bottomWidth,CGRectGetWidth(self.bounds),self.bottomWidth))
        tmp.backgroundColor = self.bottomColor
        return tmp
    }()
    
    private func config() {
        self.addSubview(self.scrollView)
        self.scrollView.addSubview(self.bottomView)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.config()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.config()
    }
}
