//
//  Categories.swift
//  EcommerceApp
//
//  Created by Isadora Tavares on 14/09/23.
//

import SwiftUI

struct Categories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                Categorie(imageType: "icon",
                          imageName: "circle.grid.2x2.fill",
                          title: "All",
                          isActive: true)
                Categorie(imageType:"image",
                          imageName: "Shoe2",
                          title: "Shoes",
                          isActive: false
                )
                Categorie(imageType:"image",
                          imageName: "Smartwatch",
                          title: "Watch",
                          isActive: false
            )
                Categorie(imageType:"image",
                          imageName: "Tshirt",
                          title: "Tshirt",
                          isActive: false
            )
            }
        }.padding()
    }
   
    struct Categorie: View {
        let imageType:String
        let imageName: String
        let title: String
        let isActive: Bool

        var body: some View {
            HStack{
                if imageType == "icon" {
                    Image(systemName: imageName)
                        .font(.system(size: 20))
                        .foregroundColor(Color("Salmon"))
                        .cornerRadius(25.0)
                } else if imageType == "image" {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(1, contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .cornerRadius(25.0)
                }
                Text(title)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(isActive ? Color("Salmon"): Color.gray)
                    .padding([.vertical],10)
                
            }.padding([.horizontal], 5)
            .background(Color.white)
            .cornerRadius(10)
        }
    }
}
