//
//  ProductMultiply.swift
//  SimpleFactory
//
//  Created by Yiqi Wang on 2016/12/30.
//  Copyright © 2016年 Melody5417. All rights reserved.
//

import UIKit

class ProductMultiply: Product {
  override func calculate() -> Float {
    super.calculate()
    return firstOperator * secondOperator
  }
}
