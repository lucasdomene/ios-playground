import SwiftUI

struct ThreadsTabView: View {
  @State private var selectedTab: TabItem = .feed
  
  var body: some View {
    TabView(selection: $selectedTab) {
      ForEach(TabItem.allCases) { tab in
        Tab(tab.title, systemImage: tab.image, value: tab) {
          tab.view
        }
      }
    }
    .tint(.black)
  }
}

#Preview {
  ThreadsTabView()
}
