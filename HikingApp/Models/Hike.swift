//
//  Hike.swift
//  HikingApp
//
//  Created by Brandon Jones on 6/13/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
  let id = UUID()
  let name: String
  let photo: String
  let miles: Double
}
