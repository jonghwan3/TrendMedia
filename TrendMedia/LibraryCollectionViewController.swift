//
//  LibraryCollectionViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/20.
//

import UIKit


class LibraryCollectionViewController: UICollectionViewController {
    
    var bookList: [Book] = BookInfo().books
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let sectionSpacing: CGFloat = 8
        let width = (UIScreen.main.bounds.width - spacing * 2 - sectionSpacing * 2) / 2
        layout.itemSize = CGSize(width: width, height: width)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: sectionSpacing, left: sectionSpacing, bottom: sectionSpacing, right: sectionSpacing)
        layout.minimumInteritemSpacing = spacing
        layout.minimumLineSpacing = spacing
        collectionView.collectionViewLayout = layout
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LibraryCollectionViewCell", for: indexPath) as! LibraryCollectionViewCell
        
        cell.configCell(data: bookList[indexPath.item])
        
        return cell
        
    }
    @IBAction func searchBarButtonClicked(_ sender: UIBarButtonItem) {
        
        let storyboard = UIStoryboard(name: "Library", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: LibraryViewController.identifier) as! LibraryViewController
        let navigationController = UINavigationController.init(rootViewController: viewController)
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Library", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: LibraryDetailViewController.identifier) as! LibraryDetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
//    
//    let sb = UIStoryboard(name: "Trend", bundle: nil)
//    let vc = sb.instantiateViewController(withIdentifier: TrendCollectionViewController.identifier) as! TrendCollectionViewController
//    self.navigationController?.pushViewController(vc, animated: true)
}
