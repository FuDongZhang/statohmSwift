//
//  CommunityViewController.swift
//  wolfSwift
//
//  Created by XQT-zfd on 2017/6/26.
//  Copyright © 2017年 XQT-zfd. All rights reserved.
//

import UIKit

class StoreController: BasicViewController ,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    var nowClassName = [String] ()
    var surplusClassName = [String] ()
    var collectView : UICollectionView?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        saveData()
        createCollectView()
    }
    
    private func saveData() {
       
        nowClassName += ["A-1","A-2","A-3","A-4","A-5","A-6","A-7","A-8","A-9","A-10","A-11"]
        surplusClassName += ["B-1","B-2","B-3","B-4","B-5","B-6","B-7","B-8","B-9","B-10","B-11"]
    }
    
    func createCollectView(){
        
        let flowLayout = UICollectionViewFlowLayout();
        
        collectView = UICollectionView.init(frame: CGRect(x: 0, y: 0, width: 375, height: 667), collectionViewLayout: flowLayout)
        collectView!.delegate = self
        collectView!.dataSource = self
        collectView!.backgroundColor = UIColor.purple
        collectView!.register(StoreCell.self, forCellWithReuseIdentifier: "storeCell")
        self.view.addSubview(collectView!)
    }
}

extension StoreController {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 100
    }
    
    /*分区个数*/
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    /*自定义cell*/
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storeCell", for: indexPath) as! StoreCell;
            
        cell.backgroundColor = UIColor.red
        cell.label.text = "战狼2"//nowClassName[indexPath.item]
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsetsMake(10, 10, 10, 10);
    }
    
    //最小 item 间距
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        
        return 10;
    }
    
    //最小行间距
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        
        return 10;
    }
    
    //item 的尺寸
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: self.view.bounds.size.width / 4.0 - 50 / 4.0, height:self.view.bounds.size.width / 4.0 - 50 / 4.0)
    }
}


