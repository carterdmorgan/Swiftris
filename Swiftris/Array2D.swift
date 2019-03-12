//
//  Array2D.swift
//  Swiftris
//
//  Created by Morgan, Carter on 3/10/19.
//  Copyright © 2019 carterdmorgan. All rights reserved.
//


class Array2D<T>: CustomStringConvertible {
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(repeating: nil, count: rows * columns)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
    
    var description: String {
        return array.description
    }
}
