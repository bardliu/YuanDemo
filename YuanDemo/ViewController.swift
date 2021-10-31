//
//  ViewController.swift
//  YuanDemo
//
//  Created by 刘曦 on 2020/8/9.
//  Copyright © 2020 刘鹏宇. All rights reserved.
//

import UIKit
import Yuan

class ViewController: UIViewController {
    var scrollView : UIScrollView!
    var yuanButton : UIButton!
    var alertWindow : UIWindow!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView = UIScrollView(frame: self.view.bounds)
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: scrollView.frame.height * 3 / 2)
        self.view.addSubview(scrollView)

        yuanButton = UIButton(frame: CGRect(x: 20, y: 50, width: 110, height: 40))
        yuanButton.setTitleColor(UIColor.red, for: .normal)
        yuanButton.setTitle("打开Yuan", for: .normal)
        
        yuanButton.addTarget(self, action: #selector(yuanButtonClicked), for: .touchUpInside)
        yuanButton.layer.borderColor = UIColor.black.cgColor
        yuanButton.layer.borderWidth = 0.5
        yuanButton.layer.cornerRadius = 5
        yuanButton.layer.masksToBounds = true
        scrollView.addSubview(yuanButton)
    }

    @objc func yuanButtonClicked() {
        YuanManager.sharedInstance().openModule(withAppId: "yuan", from: self);
    }
}

