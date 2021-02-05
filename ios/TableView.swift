//
//  Map.swift
//  tableview
//
//  Created by Zach Gibson on 2/5/21.
//

import Foundation
import React

@objc(TableView)
class TableView: RCTViewManager {
  override func view() -> UIView! {
    let viewController = TableViewController()
    return viewController.view
  }
  
  override class func requiresMainQueueSetup() -> Bool {
    return true
  }
}
