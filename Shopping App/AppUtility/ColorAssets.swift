//
//  ColorAssets.swift
//  Shopping App
//
//  Created by Nitish Kumar on 03/08/22.
//

import Foundation
import UIKit

enum BackgroundColor : String , CaseIterable {
    case background_1
    case background_2
    case dark

    var color : UIColor {
        return UIColor(named: self.rawValue) ?? UIColor()
    }
}



  

