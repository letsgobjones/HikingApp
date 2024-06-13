//
//  ContentView.swift
//  HikingApp
//
//  Created by Brandon Jones on 6/13/24.
//

import SwiftUI

struct ContentView: View {
  
  let hikes = [ Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
                Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
                Hike(name: "Tamanawas Falls", photo: "tam", miles: 5)
  ]
  
  var body: some View {
    NavigationStack {
      List(hikes) { hike in
        NavigationLink(value: hike) {
        HikeListView(hike: hike)
        }
      }.navigationTitle("Hikes")
        .navigationDestination(for: Hike.self) { hike in
          HikeDetailView(hike: hike)
        }
    }
  }
}

#Preview {
    ContentView()
}



