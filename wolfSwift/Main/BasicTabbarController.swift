//
//  BasicTabbarController.swift
//  wolfSwift
//
//  Created by XQT-zfd on 2017/6/22.
//  Copyright © 2017年 XQT-zfd. All rights reserved.
//

import UIKit

class BasicTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addAllChildViewController()
    }
}

extension BasicTabbarController{
    
    /* 添加子视图控制器 */
    func addAllChildViewController() {
        
        addChildController(childController: HomePageController(), title: "首页", image: "normal_homepage", selectedImage: "select_homepage")
        addChildController(childController: StoreController(), title: "商城", image: "normal_store", selectedImage: "select_store")
        addChildController(childController: ShoppingCartController(), title: "购物车", image: "normal_shoppingCart", selectedImage: "select_shoppingCart")
        addChildController(childController: IndustryController(), title: "行业", image: "normal_industry", selectedImage: "select_industry")
        addChildController(childController: MineController(), title: "我的", image: "normal_mine", selectedImage: "select_mine")
    }
    
    func addChildController(childController:UIViewController, title: String, image: String, selectedImage: String) {
        
        childController.title = title
        childController.tabBarItem.image = UIImage.init(named: image)
        childController.tabBarItem.selectedImage = UIImage.init(named: selectedImage)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        childController.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -2)
        
        /*设置点击之后的颜色*/
        childController.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.orange], for: UIControlState.selected)
        
        /*设置导航控制器*/
        let childNavigation = BasicNavigationController.init(rootViewController: childController)
        
        addChildViewController(childNavigation)
    }
}
