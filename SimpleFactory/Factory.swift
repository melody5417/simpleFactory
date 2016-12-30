//
//  Factory.swift
//  SimpleFactory
//
//  Created by Yiqi Wang on 2016/12/30.
//  Copyright © 2016年 Melody5417. All rights reserved.
//

import Foundation

// product type as param
enum ProductType: Int {
  case ProductTypeAdd = 0
  case ProductTypeMinus = 1
  case ProductTypeMultiply = 2
  case ProductTypeDivide = 3
}

class Factory: NSObject {
  
  class func createProduct(_ param: String) -> Product {
    let operationArray = ["+", "-", "*", "/"]
    
    let type: ProductType = ProductType(rawValue: operationArray.index(of: param)!)!
    
    return createProductWithType(type)
  }
  
  class func createProductWithType(_ productType: ProductType) -> Product {
    switch productType {
      case .ProductTypeAdd:
        return ProductAdd()
        
      case .ProductTypeMinus:
        return ProductMinus()
        
      case .ProductTypeMultiply:
        return ProductMultiply()
        
      case .ProductTypeDivide:
        return ProductDivide()
    }
  }
}

