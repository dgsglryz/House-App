//
//  House.swift
//  Assignment1
//
//  Created by Derrick Park on 2023-03-03.
//

import Foundation

class House: CustomStringConvertible {
    private var _size: Int
    var border: Character
    var fill: Character
    
    init(size: Int, border: Character = "X", fill: Character = "*") {
        if size < 3 {
            _size = 3
        } else if size > 37 {
            _size = 37
        } else {
            _size = size
        }
        self.border = border
        self.fill = fill
    }
    
    var perimeter: Int {
        return 4 * _size
    }
    
    var area: Double {
        let height = sqrt(3) * Double(_size + 2) / 2
        let baseArea = Double(_size * _size)
        let triArea = height * Double(_size + 2) / 2
        return baseArea + triArea
    }
    
    func grow() {
        if _size < 37 {
            _size += 1
        }
    }
    
    func shrink() {
        if _size > 3 {
            _size -= 1
        }
    }
    
    func draw() {
        let roofWidth = _size + 2
        let roofHeight = Int(sqrt(3) * Double(roofWidth) / 2)
        
        
        var roof = ""
        for i in 0..<roofHeight {
            let spaces = roofHeight - i - 1
            let fill = i == 0 ? "\(border)" : "\(self.fill)"
            roof += String(repeating: " ", count: spaces) + fill + String(repeating: " ", count: i * 2) + fill + String(repeating: " ", count: spaces) + "\n"
        }
        
        
        var base = ""
        for _ in 0..<_size {
            base += "\(border) "
        }
        base += "\(border)\n"
        for _ in 0..<_size-2 {
            base += "\(border) \(String(repeating: "\(self.fill) ", count: _size-2))\(border)\n"
        }
        for _ in 0..<_size {
            base += "\(border) "
        }
        base += "\(border)\n"
        
        let house = roof + base
        print(house, terminator: "")
    }
    
    var description: String {
        return "House size: \(_size)\nPerimeter: \(perimeter)\nArea: \(String(format: "%.2f", area))\n\(draw())\n"
    }
}
