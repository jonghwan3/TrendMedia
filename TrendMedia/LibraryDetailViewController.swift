//
//  LibraryDetailViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/21.
//

import UIKit

class LibraryDetailViewController: UIViewController {
    
    static let identifier = "LibraryDetailViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func webViewButtonClicked(_ sender: UIButton) {
        
        let sb = UIStoryboard.init(name: "Library", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: LibraryWebViewController.identifier) as! LibraryWebViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
