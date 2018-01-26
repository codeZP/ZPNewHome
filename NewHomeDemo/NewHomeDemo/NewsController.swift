//
//  NewsController.swift
//  NewHomeDemo
//
//  Created by miaolin on 16/5/11.
//  Copyright © 2016年 赵攀. All rights reserved.
//

import UIKit

class NewsController: UITableViewController {
    
    let ID = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: ID)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ID)
        cell!.textLabel?.text = title! + "\(indexPath.row)"
        return cell!
    }
}
