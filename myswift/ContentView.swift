import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding().foregroundColor(Color.white).background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
