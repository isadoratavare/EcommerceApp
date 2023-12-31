import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                AppBarView()
                
                SearchBar()
                
                Text("Carrousel").padding()
                
                Text("Categories").padding()
                
                Text("Product List").padding()
                
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

struct AppBarView: View {
    var body: some View {
        VStack{
            HStack(alignment: .center){
                Button(action: {}) {
                    Image(systemName: "circle.grid.2x2.fill")
                        .font(.system(size: 20))
                        .padding(10.0)
                        .background(Color.white)
                        .foregroundColor(Color("Salmon"))
                        .cornerRadius(25.0)
                }
                
                Spacer()
                
                HStack(spacing: 5){
                    Button(action: {}) {
                        ZStack{
                            Image(systemName: "basket.fill")
                                .font(.system(size: 15))
                                .padding(15.0)
                                .background(Color.white)
                                .foregroundColor(Color(.gray))
                                .cornerRadius(25.0)
                            Circle()
                                .frame(width: 8, height: 8)
                                .foregroundColor(Color("Salmon"))
                                .padding([.leading, .bottom], 19)
                            
                        }
                    }
                    Button(action: {}) {
                        Image("Profile")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white)
                            .cornerRadius(25.0)
                            .frame(width: 40, height: 40)
                        
                        
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct SearchBar: View {
    @State private var search: String = "";
    var body: some View {
        HStack{
            HStack{
                TextField("Search", text: $search)
                Button(action: {
                    if search != "" {
                        self.search = ""
                    }
                }) {
                    Image(systemName: search == "" ? "magnifyingglass" : "xmark")
                        .padding(.trailing, 8)
                        .foregroundColor(Color.black)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
            
            Button(action: {}) {
                Image(systemName: "slider.horizontal.3")
                    .font(.system(size: 20))
                    .padding(10.0)
                    .background(Color("Salmon"))
                    .foregroundColor(Color.white)
                    .cornerRadius(10.0)
                
            }
        }.padding(.horizontal)
    }
}
