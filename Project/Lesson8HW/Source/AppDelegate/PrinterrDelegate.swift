//
//  PrinterrDelegate.swift
//  Lesson8HW
//
//  Created by Ram on 18.01.2025.
//
import Foundation

protocol PrinterrDelegate: AnyObject {
    func textToPrint() -> String
}
