//
//  UIView+Extensions.swift
//  Weather App
//
//  Created by Guilherme Fonseca on 08/12/23.
//

import Foundation
import UIKit

extension UIView{
    func setConstraintsToParent(_ parent: UIView) {
        
        /*
         uso o self para estabelecer em relação a view que estou chamando
         e o parente a view que eu estou passando
         */
        
        NSLayoutConstraint.activate([
        
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor)
            
        ])
    }
}
