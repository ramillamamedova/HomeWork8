//
//  Printer.swift
//  Lesson8HW
//
//  Created by Ram on 18.01.2025.
//

// PrinterDelegate.swift

// Printer.swift
import Foundation

protocol PrinterDelegate: AnyObject {
    var textToPrint: String { get }
}
