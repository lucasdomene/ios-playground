//
//  ContentView.swift
//  LottieAnimation
//
//  Created by Lucas Firmo on 07/05/25.
//

import SwiftUI
import Lottie

struct ContentView: View {
  @State private var isHidden: Bool = false
  
  var body: some View {
    LottieView(animation: .named("confetti"))
      .playing()
      .animationDidFinish { completed in
        print(completed)
      }
  }
}

#Preview {
  ContentView()
}
