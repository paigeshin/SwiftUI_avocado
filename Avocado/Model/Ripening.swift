//
//  Ripening.swift
//  Avocado
//
//  Created by paigeshin on 2021/02/18.
//

import SwiftUI

// MARK: RIPENING MODEL

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}

