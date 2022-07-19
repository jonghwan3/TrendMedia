//
//  SettingTableViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/18.
//

import UIKit

//CaseIterable: 프로토콜
enum SettingOptions: CaseIterable {
    case total, personal, others // 섹션
    
    var sectionTitle: String {
        switch self {
        case .total:
            return "전체 설정"
        case .personal:
            return "개인 설정"
        case .others:
            return "기타"
        }
    }
    
    var rowTitle: [String] {
        switch self {
        case .total:
            return ["공지사항", "실험실", "버전 정보"]
        case .personal:
            return ["개인/보안", "알림", "채팅", "멀티프로필"]
        case .others:
            return ["고객센터/도움말"]
        }
    }
}

class SettingTableViewController: UITableViewController {
    
//    var sectionArray = ["전체 설정", "개인 설정", "기타"]
//    var cellArray = [["공지사항", "실험실", "버전 정보"], ["개인/보안", "알림", "채팅", "멀티프로필"], ["고객센터/도움말"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80 //default: 44
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
//        return sectionArray.count
        return SettingOptions.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return sectionArray[section]
        return SettingOptions.allCases[section].sectionTitle
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return cellArray[section].count
        return SettingOptions.allCases[section].rowTitle.count
    }
    
    //헤더 크기 조절 하는 방법..?
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
//        cell.textLabel?.text = cellArray[indexPath.section][indexPath.row]
        cell.textLabel?.text = SettingOptions.allCases[indexPath.section].rowTitle[indexPath.row]
        cell.textLabel?.font = .systemFont(ofSize: 13)
        
        return cell
    }
    //셀의 높이(옵션)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
