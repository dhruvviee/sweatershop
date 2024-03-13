//
//  ProductCard.swift
//  SweaterShop
//
//  Created by Dhruv Sharma on 12/03/24.
//

import SwiftUI

struct ProductCard: View {
    
    let product: ProductModel
    @EnvironmentObject var productViewModel: ProductViewModel
 //   var product: ProductModel
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            
            
            ZStack(alignment: .bottom){
               
                Image(product.image)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 180,height: 250)
                        .shadow(radius: 6)
               
                
                
                VStack(alignment: .leading,spacing: 3){
                    Text(product.name)
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text("₹ \(product.price)")
                       
                } .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
            }
            Button(action: {
                productViewModel.addToCart(product: product)
            }, label: {
                Image(systemName: "plus")
                    .tint(.white)
                    .padding()
                    .background(Circle())
                    .padding(.top , 8)
                    .padding(.trailing , 2.7)
            })
        }
    }
    
}

#Preview {
    ProductCard(product: products[0])
      //  .environment(ProductViewModel())
}
