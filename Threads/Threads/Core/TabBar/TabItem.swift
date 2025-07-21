import SwiftUI

enum TabItem: Int, CaseIterable, Identifiable {
  case feed
  case explore
  case create
  case activity
  case profile
  
  var id: Int { rawValue }
  
  var title: String {
    switch self {
    case .feed: "Feed"
    case .explore: "Explore"
    case .create: "Create"
    case .activity: "Activity"
    case .profile: "Profile"
    }
  }
  
  var image: String {
    switch self {
    case .feed: "house"
    case .explore: "magnifyingglass"
    case .create: "plus"
    case .activity: "heart"
    case .profile: "person"
    }
  }
  
  @ViewBuilder
  var view: some View {
    switch self {
    case .feed: FeedView()
    case .explore: ExploreView()
    case .create: CreationView()
    case .activity: ActivityView()
    case .profile: ProfileView()
    }
  }
}
