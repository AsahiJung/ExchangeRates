//
//  NibLoadableViewProtocol.swift
//  ExchangeRates
//
//  Created by giuk.jung on 2019/05/16.
//  Copyright © 2019年 giuk.jung. All rights reserved.
//

import UIKit

protocol NibLoadableViewProtocol {
  static var nib:UINib { get }
}

extension NibLoadableViewProtocol where Self: UIView {
  static var nib: UINib {
    let className = String(describing: self)
    return UINib(nibName: className, bundle: Bundle(for: self))
  }
  
  static func view() -> Self? {
    return nib.instantiate(withOwner: self, options: nil).first as? Self
  }
}
