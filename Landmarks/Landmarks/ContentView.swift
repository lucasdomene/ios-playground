//
//  ContentView.swift
//  Landmarks
//
//  Created by Lucas Firmo on 27/04/25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MapView()
        .frame(height: 300)
      
      CircleImage()
        .offset(y: -130)
        .padding(.bottom, -130)
      
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
          .foregroundStyle(.black)
        
        HStack {
          Text("Joshua Tree National Park")
          Spacer()
          Text("California")
        }
        .font(.subheadline)
        .foregroundStyle(.secondary)
        
        Divider()
        
        Text("About Turtle Rock")
          .font(.title2)
        Text("Descriptive text goes here")
      }
      .padding()
      
      Spacer()
    }
  }
}

#Preview {
  ContentView()
}
