//
//  LibraryViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/21.
//

import UIKit

class LibraryViewController: UIViewController {

    static let identifier = "LibraryViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "검색"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
        
    }
    
    @objc func closeButtonClicked() {
        self.dismiss(animated: true)
    }
    
}
