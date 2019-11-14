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
    var alphaRead = 1
    var alphaNew = 1
    var formatter = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setFormatter()
        initDemoData()
        let demoCell = UINib(nibName: "demoCell", bundle: nil)
        tableOwner.register(demoCell, forCellReuseIdentifier: "_demoCell")
        quantityNew.text = "1"
        quantityRead.text = "1"
    }
    
    func initDemoData(){
        demoData = [
            DemoCellsData(clientNameLabel: "Caroline Adams", messageLabel: "Message", messageTextLabel: "Hello Mr John", alpha:1),
            DemoCellsData(clientNameLabel: "Rodolf Nix", messageLabel: "Message", messageTextLabel: "Hello Mr John", alpha:1)
        ]
    }
    
    func setFormatter(){
        formatter.maximumFractionDigits = 1
        formatter.minimumFractionDigits = 1
        formatter.numberStyle = .decimal
    }
    
    @IBAction func newPlusAction(_ sender: Any) {
        print("new plus")
        alphaPlus(index:0)
        let value = demoData[0].alpha
        if let formattedString = formatter.string(for: value) {
            quantityNew.text = formattedString
        }
    }
    @IBAction func newLessAction(_ sender: Any) {
        print("new less")
        alphaLess(index:0)
        let value = demoData[0].alpha
        if let formattedString = formatter.string(for: value) {
            quantityNew.text = formattedString
        }
    }
    @IBAction func readPlusAction(_ sender: Any) {
        alphaPlus(index:1)
        let value = demoData[1].alpha
        if let formattedString = formatter.string(for: value) {
            quantityRead.text = formattedString
        }
    }
    @IBAction func readLessAction(_ sender: Any) {
        alphaLess(index:1)
        let value = demoData[1].alpha
        if let formattedString = formatter.string(for: value) {
            quantityRead.text = formattedString
        }
    }
    
    func alphaPlus(index:Int){
        
        if demoData[index].alpha <= 0.9 {
            demoData[index].alpha = demoData[index].alpha + 0.1
        }
        tableOwner.reloadData()
    }
    func alphaLess(index:Int){
        if demoData[index].alpha >= 0.1 {
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
