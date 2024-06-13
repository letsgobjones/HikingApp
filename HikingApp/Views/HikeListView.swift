//
//  HikeListView.swift
//  HikingApp
//
//  Created by Brandon Jones on 6/13/24.
//

import SwiftUI

struct HikeListView: View {
  let hike: Hike
  var body: some View {
    HStack (alignment: .top) {
      Image(hike.photo)
        .resizable()
        .scaledToFit()
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .frame(width: 100)
      VStack(alignment: .leading) {
        Text(hike.name)
        Text("\(hike.miles.formatted()) miles")
      }
    }
  }
}


#Preview {
  HikeListView(hike: Hike(name: "Fake Mountain", photo: "fake", miles: 10))
}
