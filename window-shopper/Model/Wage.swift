//
//  Wage.swift
//  window-shopper
//
//  Created by Vitalii Navrotskyi on 02.05.2022.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
