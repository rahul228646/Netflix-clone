//
//  Extensions.swift
//  Netflix clone
//
//  Created by rahul kaushik on 11/10/22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
