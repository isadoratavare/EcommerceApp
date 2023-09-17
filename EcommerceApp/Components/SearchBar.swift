import SwiftUI

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

