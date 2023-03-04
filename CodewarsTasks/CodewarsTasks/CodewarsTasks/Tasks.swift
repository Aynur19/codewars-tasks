//
//  Tasks.swift
//  CodewarsTasks
//
//  Created by Aynur Nasybullin on 04.03.2023.
//

import Foundation

class Tasks {
    
    func quaterOfTheYear(of month: Int) -> Int {
        switch month {
          case 0...3: return 1
          case 3...6: return 2
          case 6...9: return 3
          default : return 4
        }
    }
    
    func gravityFlip(_ direction: String, _ a: [Int]) -> [Int] {
        return direction == "R" ? a.sorted() : a.sorted(by: >)
    }
}
