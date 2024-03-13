//
//  ProductViewModel.swift
//  SweaterShop
//
//  Created by Dhruv Sharma on 12/03/24.
//

import Foundation

class ProductViewModel: ObservableObject, Observable{
    @Published  var addedToCart: [ProductModel] = []
    @Published  var total: Int = 0
    
    

    
    func addToCart(product : ProductModel){
        addedToCart.append(product)
        total += product.price
    }
    
    func removeFromCart(product : ProductModel){
        addedToCart = addedToCart.filter{
            $0.id != product.id
        }
        total -= product.price
    }
    
}
