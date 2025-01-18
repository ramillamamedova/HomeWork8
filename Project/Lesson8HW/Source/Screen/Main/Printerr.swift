//
//  Printerr.swift
//  Lesson8HW
//
//  Created by Ram on 18.01.2025.
//

import Foundation

class Printerr {
    
    weak var delegate: PrinterrDelegate?
    var timer: Timer?
    
    func startPrinting() {
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(printText), userInfo: nil, repeats: true)
    }
    
    @objc func printText() {
    
        if let text = delegate?.textToPrint() {
            print(text)
        }
    }
    
    func stopPrinting() {
       
        timer?.invalidate()
        timer = nil
    }
}
