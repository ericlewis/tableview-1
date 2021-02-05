//
//  TableViewController.swift
//  tableview
//
//  Created by Zach Gibson on 2/5/21.
//

import Foundation
import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  let data: [Int] = [0, 1, 2, 3, 4, 5]
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = "Yeet"
    return cell
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let tableView = UITableView()
    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
    tableView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
    tableView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
    
    tableView.delegate = self
    tableView.dataSource = self
  }
}

