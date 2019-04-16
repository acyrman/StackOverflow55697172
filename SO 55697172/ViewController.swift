//
//  ViewController.swift
//  SO 55697172
//
//  Created by acyrman on 4/15/19.
//  Copyright © 2019 iCyrman. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.tableFooterView = UITableViewHeaderFooterView()
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        GEUserSettings.toggleTheme()
    }
    
}

