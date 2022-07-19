//
//  BucketListTableViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/19.
//

import UIKit

class BucketListTableViewController: UITableViewController {
    
    var list = ["범죄도시2", "탑건", "토르", "마녀2", "요즘영화"]
    
    @IBOutlet weak var userTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
        
    }
    @IBAction func userTextFieldDidEndOnExit(_ sender: UITextField) {
        
        list.append(sender.text!)
        
        //중요!
        tableView.reloadData()
        //Section별, Cell별로 Reload도 가능
        //tableView.reloadSections(IndexSet(), with: .none)
        //tableView.reloadRows(at: [IndexPath(row: 0, section: 0), IndexPath(row: 1, section: 0)], with: .none)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //indexPath+1 같이 사용할 수 있어서, for를 사용한다.
        let cell = tableView.dequeueReusableCell(withIdentifier: "BucketListTableViewCell", for: indexPath) as! BucketListTableViewCell // as? 타입 캐스팅
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "BucketListTableViewCell") as! BucketListTableViewCell
        
        cell.bucketListLabel.text = list[indexPath.row]
        cell.bucketListLabel.font = .boldSystemFont(ofSize: 18)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //배열 삭제 후 테이블뷰 reload
            list.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    // 오른쪽에서 스와이프
//    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        //삭제
//    }
    
    // 왼쪽에서 스와이프
//    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        //즐겨찾기, 핀고정
//    }
    
}
