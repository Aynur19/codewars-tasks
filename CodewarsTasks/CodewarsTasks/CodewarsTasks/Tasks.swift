//
//  Tasks.swift
//  CodewarsTasks
//
//  Created by Aynur Nasybullin on 04.03.2023.
//

import Foundation

class Tasks {
    
    func disemvowelTrolls(_ s: String) -> String {
        var phrase = s
        let vowels: Set<Character> = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
        phrase.removeAll(where: { vowels.contains($0) })
        return phrase
    }
    
    func wolfInSheepIsClothing(_ queue: [String]) -> String {
        if queue[queue.count - 1] == "wolf" {
            return "Pls go away and stop eating my sheep"
        }
        
        for i in 1...queue.count {
            if queue[queue.count - 1 - i] == "wolf" {
                return "Oi! Sheep number \(i)! You are about to be eaten by a wolf!"
            }
        }

        return ""
    }
    
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
