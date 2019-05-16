//
//  UICollectionView_Extension.swift
//  ExchangeRates
//
//  Created by giuk.jung on 2019/05/16.
//  Copyright © 2019年 giuk.jung. All rights reserved.
//

import UIKit

extension UICollectionView {
  func register<T: NibLoadableViewProtocol & ReusableViewProtocol>(_ c: T.Type) {
    register(T.nib, forCellWithReuseIdentifier: T.reuseIdentifier)
  }
  func dequeue<T: NibLoadableViewProtocol & ReusableViewProtocol>(_ T:T.Type, for indexPath: IndexPath) -> T? {
    return dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T
  }
}

extension UICollectionViewCell: NibLoadableViewProtocol {}
extension UICollectionViewCell: ReusableViewProtocol {}
