//
//  ViewController.swift
//  SummerMediaFileCellDemo
//
//  Created by Kang Jinyeoung on 08/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import UIKit
import SummerMediaFileCell

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    var testArray = ["AAA", "BBB", "CCC", "DDD"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let tableView = UITableView(frame: view.bounds, style: UITableViewStyle.grouped)
    tableView.delegate = self
    tableView.dataSource = self
    view.addSubview(tableView)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return testArray.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = SummerMediaFileCell(style:UITableViewCellStyle.default , reuseIdentifier: "test")
    
    
    return cell
  }

}



