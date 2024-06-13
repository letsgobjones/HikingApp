//
//  HikeDetailView.swift
//  HikingApp
//
//  Created by Brandon Jones on 6/13/24.
//

import SwiftUI

struct HikeDetailView: View {
  @State private var zoomed: Bool = false
  
  let hike: Hike
    var body: some View {
      VStack {
        Image(hike.photo)
          .resizable()
          .aspectRatio(contentMode: zoomed ? .fill : .fit)
          .clipShape(RoundedRectangle(cornerRadius: 10.0))
          .padding()
          .onTapGesture {
            withAnimation {
              
              zoomed.toggle()
            }
          }
        Text(hike.name)
          .font(.title)
        Text("\(hike.miles.formatted()) miles")
        Spacer()
      }.navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
  NavigationStack {
    HikeDetailView(hike: Hike(name: "Fake Mountain", photo: "fake", miles: 10))
  }
}
