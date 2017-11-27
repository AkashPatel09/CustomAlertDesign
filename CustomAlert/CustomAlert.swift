//
//  CustomAlert.swift
//  CustomAlert
//
//  Created by Akash Patel on 26/11/17.
//  Copyright © 2017 Akash Patel. All rights reserved.
//

import UIKit

class CustomAlert: UIView {

    @IBOutlet var alertContainer: UIView!
    @IBOutlet var lblAlertMsg: UILabel!
    @IBOutlet var btnOk: UIButton!
    @IBOutlet var btnOk2: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.alertContainer.layer.cornerRadius = 5
        self.alertContainer.layer.masksToBounds = true
    }
}
