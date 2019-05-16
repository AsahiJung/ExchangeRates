//
//  ReusableViewProtocol.swift
//  ExchangeRates
//
//  Created by giuk.jung on 2019/05/16.
//  Copyright © 2019年 giuk.jung. All rights reserved.
//

import UIKit
protocol ReusableViewProtocol {
  static var reuseIdentifier:String { get }
}

extension ReusableViewProtocol {
  static var reuseIdentifier:String {
    let className = String(describing: self)
    return "\(className)"
  }
}
