//
//  ThreadsTabView.swift
//  Threads
//
//  Created by Lucas Firmo on 21/07/25.
//

import SwiftUI

struct TabItem: Identifiable {
  let id: Int
  let title: String
  let image: String
}

struct ThreadsTabView: View {
  @State private var selectedTab: Int = 0
  
  private let tabItems: [TabItem] = [
    TabItem(id: 0,
            title: "Feed",
            image: "house"),
    TabItem(id: 1,
            title: "Explore",
            image: "magnifyingglass"),
    TabItem(id: 2,
            title: "Create",
            image: "plus"),
    TabItem(id: 3,
            title: "Activity",
            image: "heart"),
    TabItem(id: 4,
            title: "Profile",
            image: "person")
  ]
  
  var body: some View {
    TabView(selection: $selectedTab) {
      ForEach(tabItems) { tabItem in
        Tab(tabItem.title,
            systemImage: tabItem.image,
            value: tabItem.id) {
          Text(tabItem.title)
        }
      }
    }
  }
}

#Preview {
  ThreadsTabView()
}
