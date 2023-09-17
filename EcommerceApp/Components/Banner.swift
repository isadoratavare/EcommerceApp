//
//  Banner.swift
//  EcommerceApp
//
//  Created by Isadora Tavares on 14/09/23.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Text("Get the special discount")
                        .font(.system(size: 9))
                        .foregroundColor(Color.white)
                    
                    Text("50%\nOFF")
                        .font(.system(size: 45))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .shadow(radius: 30)
                }   .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(15.0)
                
                
                
                
                VStack{
                    Image("Shoe")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 150, height: 300)
                        .cornerRadius(25.0)
                    
                }.frame(maxWidth: .infinity)
            }
            .padding()
        }
        .frame(width: 360, height: 200)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color("Purple"), Color("Turquoise")]),
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .cornerRadius(25.0)
        .padding(.horizontal)
    }
}
