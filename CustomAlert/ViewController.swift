//
//  ViewController.swift
//  CustomAlert
//
//  Created by Akash Patel on 26/11/17.
//  Copyright © 2017 Akash Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnClick: UIButton!
    var customAlert : CustomAlert?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClickPressed(_ sender: Any) {
        
        customAlert = Bundle.main.loadNibNamed("CustomAlert", owner: nil, options: nil)![0] as! CustomAlert
        let frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        customAlert?.frame = frame
        customAlert?.btnOk.setTitle("Submit", for: .normal)
        customAlert?.btnOk2.setTitle("Cancel", for: .normal)
        customAlert?.btnOk.addTarget(self, action: #selector(btnOkPressed(_:)), for: .touchUpInside)
        customAlert?.btnOk2.addTarget(self, action: #selector(btnOk2Pressed(_:)), for: .touchUpInside)
        self.view.addSubview((customAlert)!)
    }
    
    @IBAction func btnOkPressed(_ sender: Any) {
        
        print("This AKash Patel!!")
    }
    
    @IBAction func btnOk2Pressed(_ sender: Any) {
        
        print("Cancel Pressed!!")
        self.customAlert?.removeFromSuperview()
    }
}

