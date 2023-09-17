import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                AppBar()
                
                SearchBar()
                
                ScrollView {
                    Banner()
                    
                    Categories()
                    
                    ProductList()
                }
                
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



