//
//  String_Extension.swift
//  ExchangeRates
//
//  Created by giuk.jung on 2019/05/16.
//  Copyright © 2019年 giuk.jung. All rights reserved.
//
import Foundation
extension String  {
  var localized: String {
    return NSLocalizedString(self, comment: "")
  }
}
