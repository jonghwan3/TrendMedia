//
//  TrendViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/19.
//

import UIKit

class TrendViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackGroundColor()
        //showAlert(alertTitle: "TrendViewController", alertMessage: "alertMessage")
        searchTextField.borderColor()
    }

}
