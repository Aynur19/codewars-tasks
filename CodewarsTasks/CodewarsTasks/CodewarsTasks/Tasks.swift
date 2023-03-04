//
//  Tasks.swift
//  CodewarsTasks
//
//  Created by Aynur Nasybullin on 04.03.2023.
//

import Foundation

class Tasks {
    
    func gravityFlip(_ direction: String, _ a: [Int]) -> [Int] {
        return direction == "R" ? a.sorted() : a.sorted(by: >)
    }
}
