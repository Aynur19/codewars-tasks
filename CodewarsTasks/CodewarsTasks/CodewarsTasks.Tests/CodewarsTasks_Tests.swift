//
//  CodewarsTasks_Tests.swift
//  CodewarsTasks.Tests
//
//  Created by Aynur Nasybullin on 04.03.2023.
//

import XCTest
@testable import CodewarsTasks


final class CodewarsTasks_Tests: XCTestCase {
    var tasks: Tasks!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        // в данном методе, который запускается перед началом тестов, инициируем объект в виде класа,
        // что позволит нам обращаться к его свойствам и методам
        tasks = Tasks()
    }
    
    override func tearDownWithError() throws {
        // убираем объект из памяти после окончания теста, освобождая память для запуска следующих тестов
        tasks = nil
        try super.tearDownWithError()
    }
    
    
    func test_countTheDigit() throws {
        XCTAssertEqual(tasks.countTheDigit(5750, 0), 4700)
        XCTAssertEqual(tasks.countTheDigit(11011, 2), 9481)
        XCTAssertEqual(tasks.countTheDigit(12224, 8), 7733)
        XCTAssertEqual(tasks.countTheDigit(11549, 1), 11905)
    }
    
    func test_disemvowelTrolls() throws {
        XCTAssertEqual(tasks.disemvowelTrolls("This website is for losers LOL!"), "Ths wbst s fr lsrs LL!")
        XCTAssertEqual(tasks.disemvowelTrolls("No offense but,\nYour writing is among the worst I've ever read"),
                       "N ffns bt,\nYr wrtng s mng th wrst 'v vr rd")
        XCTAssertEqual(tasks.disemvowelTrolls("What are you, a communist?"), "Wht r y,  cmmnst?")
    }
    
    func test_wolfInSheepIsClothing() throws {
        XCTAssertEqual(tasks.wolfInSheepIsClothing(["sheep", "sheep", "sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]),
                       "Oi! Sheep number 2! You are about to be eaten by a wolf!",
                       "Testing for \(["sheep", "sheep", "sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]).")
        XCTAssertEqual(tasks.wolfInSheepIsClothing(["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]),
                       "Oi! Sheep number 5! You are about to be eaten by a wolf!",
                       "Testing for \(["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]).")
        XCTAssertEqual(tasks.wolfInSheepIsClothing(["wolf", "sheep", "sheep", "sheep", "sheep", "sheep", "sheep"]),
                       "Oi! Sheep number 6! You are about to be eaten by a wolf!",
                       "Testing for \(["sheep", "sheep", "wolf"]).")
        XCTAssertEqual(tasks.wolfInSheepIsClothing(["sheep", "wolf", "sheep"]),
                       "Oi! Sheep number 1! You are about to be eaten by a wolf!",
                       "Testing for \(["sheep", "wolf", "sheep"])")
        XCTAssertEqual(tasks.wolfInSheepIsClothing(["sheep", "sheep", "wolf"]),
                       "Pls go away and stop eating my sheep", "Testing for \(["sheep", "sheep", "wolf"]).")
        XCTAssertEqual(tasks.wolfInSheepIsClothing(["wolf"]),
                       "Pls go away and stop eating my sheep", "Testing for \(["wolf"]).")
    }
    
    func test_quaterOfTheYear() throws {
        XCTAssertEqual(tasks.quaterOfTheYear(of: 3), 1)
        XCTAssertEqual(tasks.quaterOfTheYear(of: 8), 3)
        XCTAssertEqual(tasks.quaterOfTheYear(of: 11), 4)
    }
    
    func test_gravityFlip() throws {
        XCTAssertEqual(tasks.gravityFlip("R", [3, 2, 1, 2]), [1, 2, 2, 3])
        XCTAssertEqual(tasks.gravityFlip("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
    }
    
}

