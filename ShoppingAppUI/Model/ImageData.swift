//
//  ImageData.swift
//  ShoppingAppUI
//
//  Created by Anup Saud on 2024-08-05.
//

import Foundation


struct FruitModel{
    var id: Int
    var title: fruitTitle
    var image: String
    var price: String
    var color:String
}

enum fruitTitle:String {
    case apple, apricot, avocado, banana, blackberry, cherry, dragonfruits,fig,grapes,kiwi,lemon,mango,muskmelon,orange,papaya,pear,pineapple,plum,raspberry,strawbery,watermelon
}
