//
//  CurrencyRateCellCollectionViewCell.swift
//  ExchangeRates
//
//  Created by giuk.jung on 2019/05/16.
//  Copyright © 2019年 giuk.jung. All rights reserved.
//

import UIKit

class CurrencyRateCellCollectionViewCell: UICollectionViewCell {
  @IBOutlet private weak var nameLabel:UILabel!
  @IBOutlet private weak var rateLabel:UILabel!
  @IBOutlet private weak var container:UIView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    container.configure{
      $0.clipsToBounds = true
      $0.layer.cornerRadius = 8
      $0.layer.borderColor = UIColor.black.cgColor
      $0.layer.borderWidth = 0.5
    }
  }
  
  func bind(_ data: (name: String, rate: String)){
    nameLabel.text = "\("name:".localized) \(data.name)"
    rateLabel.text = "\("rate:".localized) \(data.rate)"
  }
  
}

