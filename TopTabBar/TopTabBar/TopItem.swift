//
//  TopItem.swift
//  TopTabBar
//
//  Created by Hou's Mac on 16/2/3.
//  Copyright © 2016年 霍伟元. All rights reserved.
//

import UIKit

class TopItem: NSObject {
    var size: CGSize!
    var view: UIView!
    init(size: CGSize, view: UIView) {
        super.init()
        self.size = size
        self.view = view
    }
    
    override init() {
        super.init()
        self.size = CGSizeZero
        self.view = UIView()
    }
}
