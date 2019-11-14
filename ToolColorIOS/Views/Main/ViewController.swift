//
//  ViewController.swift
//  ToolColorIOS
//
//  Created by Wilman Rojas on 11/12/19.
//  Copyright © 2019 Wilman Rojas. All rights reserved.
//

import UIKit

protocol changeAlpha{
    func readPlus()
    func readLess()
    func newPlus()
    func newLess()
}

class ViewController: UIViewController{

    @IBOutlet var tableOwner: UITableView!
    var delegateChangeAlpha:changeAlpha?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let demoCell = UINib(nibName: "demoCell", bundle: nil)
        tableOwner.register(demoCell, forCellReuseIdentifier: "_demoCell")
    }
    
    @IBAction func newPlusAction(_ sender: Any) {
        delegateChangeAlpha?.readPlus()
    }
    @IBAction func newLessAction(_ sender: Any) {
        delegateChangeAlpha?.readLess()
    }
    @IBAction func readPlusAction(_ sender: Any) {
        delegateChangeAlpha?.newPlus()
    }
    @IBAction func lessPlusAction(_ sender: Any) {
        delegateChangeAlpha?.newLess()
    }

}


//********RENDER TABLE**********//

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableOwner.dequeueReusableCell(withIdentifier: "_demoCell") as? demoCell
        delegateChangeAlpha = cell!
        cell?.clientNameLabel.tag = (indexPath.row == 0) ? 0 : 1
        cell?.indexCell = indexPath.row
        return (cell!)
    }
}
