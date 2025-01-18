//
//  PrinterDelegate.swift
//  Lesson8HW
//
//  Created by Ram on 18.01.2025.
//

import Foundation

protocol PrinterDelegate: AnyObject {
    var textToPrint: String { get }
}

class Printer {
    weak var delegate: PrinterDelegate? // Делегат
    private var timer: Timer?

    func startPrinting() {
        stopPrinting() // Остановить предыдущий таймер, если он существует
        timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { [weak self] _ in
            guard let text = self?.delegate?.textToPrint else { return }
            print(text)
        }
    }

    func stopPrinting() {
        timer?.invalidate()
        timer = nil
    }
}
