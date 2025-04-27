//
//  MapView.swift
//  Landmarks
//
//  Created by Lucas Firmo on 27/04/25.
//

import SwiftUI
import MapKit

struct MapView: View {
  var body: some View {
    Map(initialPosition: .region(region))
  }
  
  private var region: MKCoordinateRegion {
    MKCoordinateRegion(
      center: .init(latitude: 34.011_286, longitude: -116.166_868),
      span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
  }
}

#Preview {
  MapView()
}
