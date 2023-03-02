//
//  product.swift
//  E-commerce
//
//  Created by Omar on 02/03/2023.
//

import Foundation

class ProductImage : Decodable
{
    var id :Int?
    var product_id : Int?
    var src : String?
}

class productItem : Decodable
{
    var id : Int?
    var product_type : String?
    var image : ProductImage
}
class product : Decodable {
    var products : [productItem]
}
