//
//  demoCell.swift
//  ToolColorIOS
//
//  Created by Wilman Rojas on 11/14/19.
//  Copyright © 2019 Wilman Rojas. All rights reserved.
//

import UIKit

/*protocol returnAlpha{
    func forRead(readAlpha:Float)
    func forNew()
}*/

class demoCell: UITableViewCell, changeAlpha {
    
    func readPlus(){
        print("read plus")
        print(indexCell)
        print(clientNameLabel.tag)
        if clientNameLabel.tag == 1{
            clientNameLabel.isHidden = true
        }
    }
    func readLess(){
        print("read less")
        print(indexCell)
        print(clientNameLabel.tag)
        if clientNameLabel.tag == 1{
            
        }
    }
    func newPlus(){
        print("new plus")
        print(indexCell)
        print(clientNameLabel.tag)
        if clientNameLabel.tag == 0{
            clientNameLabel.isHidden = true
        }
    }
    func newLess(){
        print("new less")
        print(indexCell)
        print(clientNameLabel.tag)
        if clientNameLabel.tag == 0{
            
        }
    }
    
    @IBOutlet var clientNameLabel: UILabel!
    @IBOutlet var dateMessageLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var secondaryText: UILabel!
    @IBOutlet var messageTextLabel: UILabel!
    
    var indexCell = 0
    var delegateChangeAlpha:changeAlpha?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
