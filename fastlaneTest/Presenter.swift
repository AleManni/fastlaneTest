//
//  Presenter.swift
//  fastlaneTest
//
//  Created by Alessandro Manni on 31/03/2019.
//  Copyright © 2019 Alessandro Manni. All rights reserved.
//

import Foundation

protocol Displayable: class {
  func populate(with model: [String])
}

class Presenter {

  weak var displayable: Displayable?

  func start() {
  let data = generateDatasource()
  displayable?.populate(with: data)
  }

  private func generateDatasource() -> [String] {
    return Range(1...20).map {
      String(format: "Table cell n%i", $0)
    }
  }


}
