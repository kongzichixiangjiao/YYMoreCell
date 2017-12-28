//
//  ViewController.swift
//  YYMoreCell
//
//  Created by 侯佳男 on 2017/12/28.
//  Copyright © 2017年 侯佳男. All rights reserved.
//  工厂设计模式 多个cell展示

import UIKit

enum idenfierType: String {
    case cell1 = "TableViewCell1"
    case cell2 = "TableViewCell2"
    case cell3 = "TableViewCell3"
    case cell4 = "TableViewCell4"
}

class ViewController: UITableViewController {

    var cells: [idenfierType] = [.cell1, .cell2, .cell4, .cell3, .cell3, .cell3, .cell3, .cell2, .cell2, .cell4, .cell4, .cell1, .cell1, .cell1]
    override func viewDidLoad() {
        super.viewDidLoad()
        for identifier in cells {
            tableView.register(UINib(nibName: identifier.rawValue, bundle: nil), forCellReuseIdentifier: identifier.rawValue)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = cells[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier.rawValue) as! BaseTableViewCell
        cell.setupData(type: identifier)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
}

