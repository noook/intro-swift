//
//  Exercice_1.swift
//  Exercises
//
//  Created by Neil Richter on 29/11/2018.
//  Copyright © 2018 Neil Richter. All rights reserved.
//

import Foundation

func condog(str: String, prefix: Character, suffix: String) -> String {
    return [String(prefix), str, suffix].joined(separator: "");
}
