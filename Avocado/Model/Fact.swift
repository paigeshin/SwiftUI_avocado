//
//  Fact.swift
//  Avocado
//
//  Created by paigeshin on 2021/02/18.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
