//
//  ViewController.swift
//  ToolColorIOS
//
//  Created by Wilman Rojas on 11/12/19.
//  Copyright © 2019 Wilman Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ownerCell = UINib(nibName: "OwnerTableCell", bundle: nil)
        table.register(ownerCell, forCellReuseIdentifier: "_OwnerTableCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}

