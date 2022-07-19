//
//  SearchTableViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/19.
//

import UIKit

class SearchTableViewController: UITableViewController {
    
    let movieList = ["마녀2", "어벤져스", "신과함께", "탑건"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell") as! SearchTableViewCell
        cell.movieTitleLabel.text = movieList[indexPath.row]
        return cell
    }

}
