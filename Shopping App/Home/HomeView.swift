//
//  HomeView.swift
//  Shopping App
//
//  Created by Nitish Kumar on 03/08/22.
//

import UIKit

class HomeView: UIView {

 // MARK: - Outlet
    @IBOutlet weak var topBtnView : UIView!
    @IBOutlet weak var searchView : UIView!
    @IBOutlet weak var trendingBtn: UIView!
    @IBOutlet weak var allBtn : UIView!
    @IBOutlet weak var newBtn : UIView!
    @IBOutlet weak var collectionView : UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        topBtnView.layer.cornerRadius = 21
        searchView.layer.cornerRadius = 16
        let viewArray = [trendingBtn,allBtn,newBtn]
        viewArray.forEach {
            $0?.layer.cornerRadius = 14
        }
    }
}
