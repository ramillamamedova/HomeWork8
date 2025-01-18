//
//  BlueViewController.swift
//  Lesson8HW
//

//

import UIKit

class BlueViewController: UIViewController, PrinterrDelegate {
    
    var printerr: Printerr!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupPrinterr()
    }
    
    func textToPrint() -> String {
        return "🚙 - blue taxi on the road"
    }
    
    private func setupUI() {
        view.backgroundColor = .lightBlue
        let taxiLabel = UILabel()
        taxiLabel.text = "🚙"
        taxiLabel.font = .systemFont(ofSize: 200.0)
        view.addSubview(taxiLabel)
        
        taxiLabel.translatesAutoresizingMaskIntoConstraints = false
        taxiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        taxiLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func setupPrinterr() {
        printerr = Printerr()
        printerr.delegate = self
        printerr.startPrinting()
    }
    
    deinit {
        printerr.stopPrinting() 
    }
}
