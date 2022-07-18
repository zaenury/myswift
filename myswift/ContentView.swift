import SwiftUI

struct ContentView: View {
    var body: some View {
        // systemName from https://developer.apple.com/sf-symbols/
        Image(systemName: "hand.raised")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
