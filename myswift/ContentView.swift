import SwiftUI

struct ContentView: View {
    var body: some View {
//      Call struct name
        HandRaisedPreview()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

// Create new struct
struct HandRaisedPreview: View {
    var body: some View {
//          systemName from https://developer.apple.com/sf-symbols/
//          Image(systemName: "hand.raised")
        Image("Swift")
            .resizable()
            .frame(width: 100, height: 100)
            .background(Color("MyColor"))
//          Cannot use foregroundCOlor because image as an image
//          .foregroundColor(Color.white)
            .padding()
            .background(Color("MyColor"))
            .cornerRadius(20)
    }
}
