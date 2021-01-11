//
//  Extensions.swift
//  Gmail UI
//
//  Created by Danish on 08/01/21.
//  Copyright © 2021 Danish. All rights reserved.
//

import Foundation

import UIKit

extension UIImageView{
    
    func makeRounded() {
        
        self.layer.borderWidth = 0.1
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
    
}
