//
//  ReceivingVC.swift
//  DelegateExercise
//
//  Created by Ivor D. Addo, PhD on 10/11/17.
//  Copyright © 2017 water. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    @IBOutlet weak var receivingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidEnterData(data: String) {
        receivingLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }
}

