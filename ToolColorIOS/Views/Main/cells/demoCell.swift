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

class demoCell: UITableViewCell{
        
    @IBOutlet var clientNameLabel: UILabel!
    @IBOutlet var dateMessageLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var secondaryText: UILabel!
    @IBOutlet var messageTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func renderData(demoData:DemoCellsData){
        clientNameLabel.text = demoData.clientNameLabel
        messageLabel.text = demoData.messageLabel
        messageTextLabel.text = demoData.messageTextLabel
        clientNameLabel.alpha = demoData.alpha
        messageTextLabel.alpha = demoData.alpha
    }
}
