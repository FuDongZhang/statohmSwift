//
//  AppDelegate.swift
//  wolfSwift
//
//  Created by XQT-zfd on 2017/6/22.
//  Copyright © 2017年 XQT-zfd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        let mainTabbar = BasicTabbarController()
        self.window?.rootViewController = mainTabbar;
        self.window?.makeKeyAndVisible()
        
        Thread.sleep(forTimeInterval: 2.0)  /*启动页延迟*/
        
        return true
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*暂时用不到*/
    func applicationWillResignActive(_ application: UIApplication) {
       
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }

}

