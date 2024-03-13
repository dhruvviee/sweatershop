//
//  ProductModel.swift
//  SweaterShop
//
//  Created by Dhruv Sharma on 12/03/24.
//

import Foundation

struct ProductModel: Identifiable{
    let id = UUID()
    var name : String
    var image: String
    var price: Int
}

var products: [ProductModel] = [
    ProductModel(name: "Deep Sea Navy", image: "sweater3", price: 2500),
    ProductModel(name: "Verdant Valley", image: "sweater4", price: 2200),
    ProductModel(name: "Skyline Cream", image: "sweater5", price: 3100),
    ProductModel(name: "Chestnut Charm", image: "sweater6", price: 4300),
    ProductModel(name: "Crimson Blaze", image: "sweater7", price: 1900),
    ProductModel(name: "Snowy Summit", image: "sweater1", price: 1700),
    ProductModel(name: "Ashen Sky", image: "sweater2", price: 1300)
]
