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
    
    func testGravityFlip() throws {
        XCTAssertEqual(tasks.gravityFlip("R", [3, 2, 1, 2]), [1, 2, 2, 3])
        XCTAssertEqual(tasks.gravityFlip("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
    }
    
}

