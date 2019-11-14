//
//  ViewController.swift
//  ToolColorIOS
//
//  Created by Wilman Rojas on 11/12/19.
//  Copyright © 2019 Wilman Rojas. All rights reserved.
//

import UIKit

struct DemoCellsData {
    var clientNameLabel: String
    var messageLabel: String
    var messageTextLabel: String
    var alpha:CGFloat
}

class ViewController: UIViewController{

    @IBOutlet var tableOwner: UITableView!
    @IBOutlet var quantityNew: UILabel!
    @IBOutlet var quantityRead: UILabel!
    
    var demoData=[DemoCellsData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDemoData()
        let demoCell = UINib(nibName: "demoCell", bundle: nil)
        tableOwner.register(demoCell, forCellReuseIdentifier: "_demoCell")
    }
    
    func initDemoData(){
        demoData = [
            DemoCellsData(clientNameLabel: "Caroline Adams", messageLabel: "Message", messageTextLabel: "Hello Mr John", alpha:1),
            DemoCellsData(clientNameLabel: "Rodolf Nix", messageLabel: "Message", messageTextLabel: "Hello Mr John", alpha:1)
        ]
    }
    
    @IBAction func newPlusAction(_ sender: Any) {
        print("new plus")
        alphaPlus(index:0)
        quantityNew.text = "\(demoData[0].alpha)"
    }
    @IBAction func newLessAction(_ sender: Any) {
        print("new less")
        alphaLess(index:0)
        quantityNew.text = "\(demoData[0].alpha)"
    }
    @IBAction func readPlusAction(_ sender: Any) {
        alphaPlus(index:1)
        quantityRead.text = "\(demoData[1].alpha)"
    }
    @IBAction func readLessAction(_ sender: Any) {
        alphaLess(index:1)
        quantityRead.text = "\(demoData[1].alpha)"
    }
    
    func alphaPlus(index:Int){
        if demoData[index].alpha < 1 {
            demoData[index].alpha = demoData[index].alpha + 0.1
        }
        tableOwner.reloadData()
    }
    func alphaLess(index:Int){
        if demoData[index].alpha > 0 {
            demoData[index].alpha = demoData[index].alpha - 0.1
        }
        tableOwner.reloadData()
    }

}


//********RENDER TABLE**********//

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableOwner.dequeueReusableCell(withIdentifier: "_demoCell") as? demoCell
        cell?.renderData(demoData:demoData[indexPath.row])
        return (cell!)
    }
}
