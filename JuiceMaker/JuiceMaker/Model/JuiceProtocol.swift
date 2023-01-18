//  JuiceMaker - JuiceProtocol.swift
//  Created by Vetto, 레옹아범 on 2023.1.13.

protocol UpdatableFruitStockDelegate: AnyObject {
    func updateStock(changeStock: [Fruit: Int])
}
