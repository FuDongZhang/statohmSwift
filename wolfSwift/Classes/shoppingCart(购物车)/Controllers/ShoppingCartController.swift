//
//  ShoppingViewController.swift
//  wolfSwift
//
//  Created by XQT-zfd on 2017/6/26.
//  Copyright © 2017年 XQT-zfd. All rights reserved.
//

import UIKit

class ShoppingCartController: BasicViewController,UITableViewDelegate, UITableViewDataSource {
    
    var ctrNames:[String]?
    var tableView : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTableView()
        self.view.backgroundColor = UIColor.red
    }
    
    func createTableView(){
        
        tableView = UITableView.init(frame: CGRect(x: 0, y: 0, width: 375, height: 667), style: .plain);
        tableView!.dataSource = self
        tableView!.delegate = self
        self.view.addSubview(tableView!)
    }
}


extension ShoppingCartController{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let iderntify:String = "swiftCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: iderntify)
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.default
                , reuseIdentifier: iderntify);
            
        }
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell?.textLabel?.text =  "在嘛"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alertControl = UIAlertController(title: "提示", message: "你选中了【\(indexPath)】", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "确定", style: UIAlertActionStyle.default, handler: nil )
        alertControl.addAction(okAction)
        self.present(alertControl, animated: true, completion: nil )
        
        print("你选中了\(indexPath)")
   }
}
