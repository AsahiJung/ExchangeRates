//
//  Configurable.swift
//  ExchangeRates
//
//  Created by giuk.jung on 2019/05/16.
//  Copyright © 2019年 giuk.jung. All rights reserved.
//

protocol Configurable {}

extension Configurable {
  @discardableResult func configure ( block : (inout Self) -> Void ) -> Self {
    var m = self
    block(&m)
    return m
  }
}
