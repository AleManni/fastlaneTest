//
//  fastlaneTestTests.swift
//  fastlaneTestTests
//
//  Created by Alessandro Manni on 31/03/2019.
//  Copyright © 2019 Alessandro Manni. All rights reserved.
//

import XCTest
@testable import fastlaneTest

class fastlaneTestTests: XCTestCase {

  func testPresenter() {
    let presenter = Presenter()
    let spy = Spy()
    presenter.displayable = spy
    presenter.start()

    XCTAssertEqual(spy.model.count, 20)
  }

}

class Spy: Displayable {

  var model: [String] = []

  func populate(with model: [String]) {
    self.model = model
  }

}
