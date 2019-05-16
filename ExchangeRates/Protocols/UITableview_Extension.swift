//
//  UITableview_Extension.swift
//  ExchangeRates
//
//  Created by giuk.jung on 2019/05/16.
//  Copyright © 2019年 giuk.jung. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
  
  func register<T: NibLoadableViewProtocol & ReusableViewProtocol>(_ : T.Type) {
    register(T.nib, forCellReuseIdentifier: T.reuseIdentifier)
  }
  
  func dequeue<T: ReusableViewProtocol>(_ : T.Type) -> T? {
    return dequeueReusableCell(withIdentifier: T.reuseIdentifier) as? T
  }
  
}

extension UITableViewCell : NibLoadableViewProtocol {}
extension UITableViewCell : ReusableViewProtocol {}
