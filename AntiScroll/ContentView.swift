import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "hourglass")
                .font(.system(size: 48))
                .foregroundStyle(.tint)
            Text("Hello, AntiScroll!")
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
