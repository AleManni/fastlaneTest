//
//  ViewController.swift
//  fastlaneTest
//
//  Created by Alessandro Manni on 31/03/2019.
//  Copyright © 2019 Alessandro Manni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  let presenter = Presenter()
  private var dataSource: [String] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.displayable = self
    presenter.start()
    tableView.dataSource = self
  }
}

extension ViewController: Displayable {
  func populate(with model: [String]) {
    dataSource = model
    tableView.reloadData()
  }
}


extension ViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataSource.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
    cell.textLabel?.text = dataSource[indexPath.row]
    return cell
  }
}

