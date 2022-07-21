//
//  TrendViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/21.
//

import UIKit

class TrendViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func movieButtonClicked(_ sender: UIButton) {
        
        //화면전환: 1. 스토리보드 파일, 2. 스토리보드 내에 뷰컨트롤러, 3. 화면 전환
        //영화버튼 클릭 > BucketListTableViewController Present
        //1.
        let storyBoard = UIStoryboard(name: "Trend", bundle: nil)
        //2.
        let viewController = storyBoard.instantiateViewController(withIdentifier: BucketListTableViewController.identifier) as! BucketListTableViewController
        //3.
        self.present(viewController, animated: true)
        
    }
    @IBAction func dramaButtonClicked(_ sender: UIButton) {
        
        //1.
        let storyBoard = UIStoryboard(name: "Trend", bundle: nil)
        //2.
        let viewController = storyBoard.instantiateViewController(withIdentifier: BucketListTableViewController.identifier) as! BucketListTableViewController
        //2.5.
        //viewController.modalPresentationStyle = .fullScreen
        //3.
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    @IBAction func bookButtonClicked(_ sender: UIButton) {
        
        //1.
        let storyBoard = UIStoryboard(name: "Trend", bundle: nil)
        //2.
        let viewController = storyBoard.instantiateViewController(withIdentifier: BucketListTableViewController.identifier) as! BucketListTableViewController
        
        //2.5.
        let navigationController = UINavigationController(rootViewController: viewController)
        
        //2.5.
        navigationController.modalPresentationStyle = .fullScreen
        //viewController.modalPresentationStyle = .fullScreen
        //3.
        self.present(navigationController, animated: true)
        
    }
}
