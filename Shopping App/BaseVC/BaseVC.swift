//
//  BaseView.swift
//  Shopping App
//
//  Created by Nitish Kumar on 03/08/22.
//

import UIKit

class BaseVC: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        baseViewSetUp()
    }

    // MARK: - Set GradientColor In BaseView
    private func baseViewSetUp() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [BackgroundColor.background_1.color.cgColor,BackgroundColor.background_2.color.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
