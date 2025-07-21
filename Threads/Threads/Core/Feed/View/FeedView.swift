import SwiftUI

struct FeedView: View {
  var body: some View {
    NavigationStack {
      ScrollView(showsIndicators: false) {
        LazyVStack {
          ForEach(0 ... 10, id: \.self) { thread in
            ThreadCell()
          }
        }
      }
      .refreshable {
        print(">>> Refreshing...")
      }
      .navigationTitle("Threads")
      .navigationBarTitleDisplayMode(.inline)
    }
    .toolbar {
      ToolbarItem(placement: .topBarTrailing) {
        Button {
          
        } label: {
          Image(systemName: "arrow.counterclockwise")
            .foregroundStyle(.black)
        }
      }
    }
  }
}

#Preview {
  NavigationStack {
    FeedView()
  }
}
