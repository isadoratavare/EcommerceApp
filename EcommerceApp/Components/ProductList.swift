import SwiftUI

struct CardProduct: View {
    let image: String;
    let productName: String;
    let price: String;
    
    var body: some View {
        VStack(alignment: .center){
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
            Text(productName)
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.432))
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(price)
                .font(.title3)
                .fontWeight(.bold)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity)
        .background(Color("PinkLight"))
        .cornerRadius(10.0)
    }
}

struct ProductList: View {
    var body: some View {
        HStack{
            Text("Popular")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Text("View All")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.601))
            
        }.padding()
        
        LazyVGrid(columns: [GridItem(), GridItem()]) {
            CardProduct(image: "Shoe", productName: "Shoe", price: "$12.00")
            CardProduct(image: "Tshirt", productName: "Tshirt", price: "$5.00")
            CardProduct(image: "Smartwatch", productName: "Watch", price: "$15.00")
            CardProduct(image: "Shoe2", productName: "Shoe", price: "$12.00")
        }
        .padding()
    }
}
