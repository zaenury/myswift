import SwiftUI

struct ContentView: View {
    var body: some View {
        // Depth Stack
        ZStack{
            Image("bg")
            // 100% width to mock up
                .resizable()
                .edgesIgnoringSafeArea(.all)
            // Call struct name
            VStack(spacing:20){
                Logo()
                FormBox()
            }
            .padding(30)
        }
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
struct Logo: View {
    var body: some View {
        // Vertical Stack
        VStack{
            // systemName from https://developer.apple.com/sf-symbols/
            // Image(systemName: "hand.raised")
            Image("Swift")
                .resizable()
                .frame(width: 100, height: 100)
                .background(Color("MyColor"))
            // Cannot use foregroundCOlor because image as an image
            // .foregroundColor(Color.white)
                .padding()
                .background(Color("MyColor"))
                .cornerRadius(20)
            Text("Hello Swift UI").bold()
        }
    }
}

struct FormBox: View {
    @State var username:String = ""
    @State var password:String = ""
    var body: some View {
        VStack(alignment: .leading){
            Text("Username").font(.callout).bold()
            TextField("Username ....", text: $username).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            SecureField("Password ....", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Hello World")}){
                HStack(){
                    Text("Sign In")
                    Spacer()
                }
            }
            .padding()
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(20)
        }
        .padding(.all, 30)
        .background(Color("MyColor"))
        .cornerRadius(20)
    }
}
