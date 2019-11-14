//
//  circularImageView.swift
//  ToolColorIOS
//
//  Created by Wilman Rojas on 11/14/19.
//  Copyright © 2019 Wilman Rojas. All rights reserved.
//

import UIKit

class circularImageView: UIImageView {

    override func didMoveToWindow() {
        //self.backgroundColor = UIColor(red:0.44, green:0.44, blue:0.44, alpha:0.5)
        self.layer.cornerRadius = self.frame.height / 2
        //self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner ,.layerMaxXMaxYCorner]
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red:0.59, green:0.59, blue:0.59, alpha:1.0).cgColor
    }

}
