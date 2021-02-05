//
//  TableViewController.swift
//  tableview
//
//  Created by Zach Gibson on 2/5/21.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
  let tableView: UITableView!
  let data: [Int] = [0, 1, 2, 3, 4, 5]
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = "Yeet"
    return cell
  }
}
