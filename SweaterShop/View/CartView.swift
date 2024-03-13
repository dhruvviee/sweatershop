//
//  CartView.swift
//  SweaterShop
//
//  Created by Dhruv Sharma on 12/03/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var productViewModel: ProductViewModel
    var body: some View {
        NavigationStack{
            ScrollView{
                if productViewModel.addedToCart.count > 0{
                    ForEach(productViewModel.addedToCart, id: \.id){ product in
                        CartDetailView(product: product)
                    }
                    HStack{
                        Text("Your Cart Total is :")
                            .bold()
                            
                        Spacer()
                        Text("₹\(productViewModel.total)")
                            .bold()
                    }.padding()
                }
                else{
                    Text("Your Cart is Empty")
                }
            }
            .navigationTitle("My Cart")
            .padding(.top)
        }
    }
}

#Preview {
    CartView()
        .environment(ProductViewModel())
}
