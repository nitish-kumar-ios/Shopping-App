//
//  ViewController.swift
//  Shopping App
//
//  Created by Nitish Kumar on 03/08/22.
//

import UIKit

class HomeVC: BaseVC {

    // MARK: - Outlets
    @IBOutlet private weak var baseView : HomeView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

     func itemImage(index name : Int) -> UIImage {

            return UIImage(named: "\(name)") ?? UIImage()

    }
}

extension HomeVC : UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = baseView.collectionView.dequeueReusableCell(withReuseIdentifier: "\(CollectionViewCell.self)", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell() }
         cell.itemImage.image = itemImage(index: indexPath.row % 5)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
    }

}
extension HomeVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2 - 40, height: 270)
    }
}
