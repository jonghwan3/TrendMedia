//
//  SearchTableViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/19.
//

import UIKit

class SearchTableViewController: UITableViewController {
    
    let movieList = MovieInfo().movie
    //["마녀2", "어벤져스", "신과함께", "탑건", "해리포터와 마법사의 돌", "내 머리속의 지우개", "기묘한 이야기", "라라랜드"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height / 8
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell") as! SearchTableViewCell
        
        cell.configureCell(data: movieList[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: TrendCollectionViewController.identifier) as! TrendCollectionViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }

}
