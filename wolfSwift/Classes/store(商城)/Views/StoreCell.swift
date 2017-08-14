//
//  StoreCell.swift
//  wolfSwift
//
//  Created by XQT-zfd on 2017/7/29.
//  Copyright © 2017年 XQT-zfd. All rights reserved.
//

import UIKit

class StoreCell: UICollectionViewCell {
    
    var label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label = UILabel.init(frame: self.bounds)
        self.addSubview(label)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
