//
//  SendingVC.swift
//  DelegateExercise
//
//  Created by Ivor D. Addo, PhD on 10/11/17.
//  Copyright © 2017 water. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    
    var delegate: DataSentDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    
}
