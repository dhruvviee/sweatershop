//
//  HomeView.swift
//  SweaterShop
//
//  Created by Dhruv Sharma on 12/03/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var productViewModel = ProductViewModel()
    
    var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 160), spacing: 20),
        GridItem(.adaptive(minimum: 160), spacing: 20)
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(products, id: \.id) { product in
                        ProductCard(product: product)
                            
                            
                    }
                } .padding()
            } .navigationTitle("Winter Collection")
                .toolbar(content: {
                    Image(systemName: "person")
                        
                    NavigationLink {
                        CartView()
                      //  .environment(productViewModel)
                    } label: {
                        CartButton(numberOfProducts: productViewModel.addedToCart.count)

                    }
                    
                })
        }
        .environment(productViewModel)
    }
}

#Preview {
    HomeView()
}
