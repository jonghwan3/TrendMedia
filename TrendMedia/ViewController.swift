//
//  ViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/18.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var mainTextField: UITextField!
    //언제 아울렛컬렉션을 사용하는 것이 좋을까?
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var date2Label: UILabel!
    
    @IBOutlet var dateLabelCollection: [UILabel]!
    
    @IBOutlet weak var yelloViewLeadingConstraint: NSLayoutConstraint!
    //변수의 스코프
    let format = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        format.dateFormat = "yyyy/MM/dd"
        
        
        yelloViewLeadingConstraint.constant = 120
        
    }
    
    func configureLabelDesign() {
        //1.OutletCollection (ex. UIView)
        for i in dateLabelCollection {
            i.font = .boldSystemFont(ofSize: 20)
            i.textColor = .brown
        }
        
        dateLabelCollection[0].text = "첫번째 텍스트"
        dateLabelCollection[1].text = "두번째 텍스트"
        
        //2.UILabel
        let labelArray = [dateLabel, date2Label]
        for i in labelArray {
            i?.font = .boldSystemFont(ofSize: 20)
            i?.textColor = .brown
        }
        
        dateLabel.text = "첫번째 텍스트"
        date2Label.text = "두번째 텍스트"
    }
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        
        dateLabel.text = format.string(from: sender.date)
        
    }
    
}

