//
//  ViewController.swift
//  ToolColorIOS
//
//  Created by Wilman Rojas on 11/12/19.
//  Copyright © 2019 Wilman Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableOwner: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let demoCell = UINib(nibName: "demoCell", bundle: nil)
        tableOwner.register(demoCell, forCellReuseIdentifier: "_demoCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableOwner.dequeueReusableCell(withIdentifier: "_demoCell") as? demoCell
        return (cell!)
    }

}

