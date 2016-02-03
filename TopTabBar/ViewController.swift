//
//  ViewController.swift
//  TopTabBar
//
//  Created by Hou's Mac on 16/2/3.
//  Copyright © 2016年 霍伟元. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let test = TopItemView(frame: CGRectMake(0,100,CGRectGetWidth(self.view.bounds),70))
        self.view.addSubview(test)
        test.views = [UIView(),UIView()]
        test.views.append(UIView())
        test.views.removeAtIndex(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

