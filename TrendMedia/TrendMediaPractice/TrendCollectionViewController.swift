//
//  TrendCollectionViewController.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/20.
//

import UIKit
import Toast
import Kingfisher
/*
 TableView -> CollectionView
 Row -> Item
 heightForRowAt > ??? (n X n 으로 구성될 수 있기 때문에!) FlowLayout
 */


class TrendCollectionViewController: UICollectionViewController {
    
    var imageURL = "https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20220708_123%2F1657272256389R34Q0_JPEG%2Fmovie_image.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //컬렉션뷰의 셀 크기, 셀 사이 간격 등 설정
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let sectionSpacing: CGFloat = 10
        let width = (UIScreen.main.bounds.width - spacing * 2 - sectionSpacing * 2) / 3
        layout.itemSize = CGSize(width: width, height: width * 1.2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: sectionSpacing * 2, left: sectionSpacing, bottom: sectionSpacing, right: sectionSpacing)
        layout.minimumInteritemSpacing = spacing
        layout.minimumLineSpacing = spacing
        collectionView.collectionViewLayout = layout

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendCollectionViewCell", for: indexPath) as! TrendCollectionViewCell
        //cell.trendImageView.image = UIImage(systemName: "arrowshape.turn.up.right.circle")
        let url = URL(string: imageURL)
        cell.trendImageView.kf.setImage(with: url)
//        cell.backgroundColor = .yellow
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        view.makeToast("\(indexPath.item)번째 셀을 선택했습니다.")
        view.makeToast("\(indexPath.item)번째 셀을 선택했습니다.", duration: 1, position: .bottom)
    }
    

}
