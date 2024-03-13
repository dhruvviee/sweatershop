//
//  CartDetailView.swift
//  SweaterShop
//
//  Created by Dhruv Sharma on 13/03/24.
//

import SwiftUI

struct CartDetailView: View {
    @EnvironmentObject var productViewModel: ProductViewModel
    var product: ProductModel
    var body: some View {
        HStack(alignment: .center,spacing: 20){
            Image(product.image)
                .resizable()
                .frame(width: 70,height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.leading,14)
            
            VStack(alignment: .leading,spacing: 7){
                Text(product.name)
                    .font(.headline)
                    .fontWeight(.bold)
                Text("₹ \(product.price)")
                    .font(.headline)
                    .fontWeight(.semibold)

            }
            Spacer()
            Image(systemName: "trash")
                .foregroundStyle(.red)
                .padding(.trailing,18)
                .onTapGesture {
                    productViewModel.removeFromCart(product: product)
                }
            
        } .frame(maxWidth: .infinity)
    }
}

#Preview {
    CartDetailView(product:products[3])
        .environment(ProductViewModel())
}
