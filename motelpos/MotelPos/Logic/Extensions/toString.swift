//
//  Date+String.swift
//  MotelPos
//
//  Created by Amir Kamali on 6/6/18.
//  Copyright © 2018 mx51. All rights reserved.
//

import Foundation

extension Date {
    
    func toString(includeTime: Bool = false) -> String {
        var format = ""
        if (includeTime) {
            format = "dd/MM/yyyy hh:mm a"
        } else {
            format = "dd/MM/yyyy"
        }
        return toString(format: format)
    }
    
    func toString(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}

extension Bool {
    
    func toString() -> String {
        return self ? "true" : "false"
    }
    
}
