import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                AppBar()
                
                SearchBar()
                
                Banner()
                
                Categories()
                
                Text("Product List").padding()
                Spacer()
                Text("Bottom Menu")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


