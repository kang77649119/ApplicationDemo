//
//  ViewController.swift
//  ApplicationDemo
//
//  Created by 也许、 on 16/8/22.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UIApplication的Demo"
        self.view.backgroundColor = UIColor.white
        
    }
    
    // 消息数字提醒
    @IBAction func badge(_ sender: UIButton) {
        
        // ios10的注册通知
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: UNAuthorizationOptions.badge) { (bool, error) in
            
        }
        
        // ios10以前的注册通知
        //application.registerUserNotificationSettings(UIUserNotificationSettings(types: .badge, categories: nil))
        UIApplication.shared.applicationIconBadgeNumber = 10
        
    }
    
    // 网络指示器
    @IBAction func netIndicator(_ sender: UIButton) {
        
        let application = UIApplication.shared
        application.isNetworkActivityIndicatorVisible = !application.isNetworkActivityIndicatorVisible
        
    }
    
    // 控制状态栏
    @IBAction func statusBar(_ sender: UIButton) {
        
        let application = UIApplication.shared
        application.isStatusBarHidden = !application.isStatusBarHidden
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

