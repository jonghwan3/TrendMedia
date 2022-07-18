//
//  SettingTableViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/18.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    var sectionArray = ["전체 설정", "개인 설정", "기타"]
    var cellArray = [["공지사항", "실험실", "버전 정보"], ["개인/보안", "알림", "채팅", "멀티프로필"], ["고객센터/도움말"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArray.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionArray[section]
    }
    
    //헤더 크기 조절 하는 방법..?
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        cell.textLabel?.text = cellArray[indexPath.section][indexPath.row]
        cell.textLabel?.font = .systemFont(ofSize: 13)
        
        return cell
    }

}
