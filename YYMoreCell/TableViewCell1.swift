//
//  TableViewCell1.swift
//  YYMoreCell
//
//  Created by 侯佳男 on 2017/12/28.
//  Copyright © 2017年 侯佳男. All rights reserved.
//

import UIKit

class TableViewCell1: BaseTableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func setupData(type: idenfierType) {
        super.setupData(type: type)
        print(self, type)
    }
}
