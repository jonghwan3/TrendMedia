//
//  ShoppingTableViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/19.
//

import UIKit

class ShoppingTableViewController: UITableViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    var list = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addingEvent(_ sender: Any) {
        list.append(userTextField.text!)
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell") as! ShoppingTableViewCell
        
        cell.userContentLabel.text = list[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            list.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
    }

}
