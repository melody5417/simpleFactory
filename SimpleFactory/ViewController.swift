//
//  ViewController.swift
//  SimpleFactory
//
//  Created by Yiqi Wang on 2016/12/30.
//  Copyright © 2016年 Melody5417. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var firstOperator: UITextField!
  
  @IBOutlet weak var operation: UITextField!
  
  @IBOutlet weak var secondOperator: UITextField!
  
  @IBOutlet weak var result: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func calculate(_ sender: UIButton) {
    let product: Product = Factory.createProduct(operation.text!) as Product
    
    product.firstOperator = Float(firstOperator.text!)!
    product.secondOperator = Float(secondOperator.text!)!
    
    let productResult: Float = product.calculate()
    
    result.text = "\(productResult)"
  }

}

