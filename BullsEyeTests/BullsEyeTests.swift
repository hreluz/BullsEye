//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Hector Reluz on 8/1/23.
//

import XCTest
@testable import BullsEye

final class BullsEyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testExample() throws {
        XCTAssertEqual(game.points(sliderValue: 50), 999)
    }
}