//
//  DataModel.swift
//  quantum-iOS-project
//
//  Created by suryansh Bisen on 04/08/22.
//

import Foundation
import UIKit

struct BasketDM {
    var basketProduct: [ProductModel]
    var nameBasket: String
    var totalPrice: String
    
    static func example() -> [BasketDM] {
        let product1 = ProductModel(productImage: UIImage(named: "capsicum")!, price: 30, productName: "Capsicum", productQuntity: "2 KG")
        let product2 = ProductModel(productImage: UIImage(named: "onion")!, price: 50, productName: "onion", productQuntity: "4 KG")
        let product3 = ProductModel(productImage: UIImage(named: "cauliflower")!, price: 60, productName: "cauliflower", productQuntity: "1 KG")
        let product4 = ProductModel(productImage: UIImage(named: "tomato")!, price: 10, productName: "tomato", productQuntity: "1 KG")
        let basket1 = BasketDM(basketProduct: [product1, product2, product3, product4], nameBasket: "Vegitable", totalPrice: "Rs 150")
        let basket2 = BasketDM(basketProduct: [product4, product2, product1,product4, product2, product1, product4, product2, product1], nameBasket: "Netural Vegiatbles", totalPrice: "Rs 140")
        
        return [basket1, basket2]
    }
    
}

struct ProductModel {
    var productImage: UIImage
    var price: Int
    var productName: String
    var productQuntity: String
}
