//  JuiceMaker - FruitStore.swift
//  Created by Vetto, 레옹아범 on 2023.1.2

class FruitStore {
    private(set) var fruits: [Fruit: Int] = [:]
    
    var strawberryAmount: Int {
        return fruits[.strawberry] ?? 0
    }
    var bananaAmount: Int {
        return fruits[.banana] ?? 0
    }
    var pineappleAmount: Int {
        return fruits[.pineapple] ?? 0
    }
    var kiwiAmount: Int {
        return fruits[.kiwi] ?? 0
    }
    var mangoAmount: Int {
        return fruits[.mango] ?? 0
    }

    init(amount: Int = 0) {
        self.fruits[.strawberry] = amount
        self.fruits[.banana] = amount
        self.fruits[.kiwi] = amount
        self.fruits[.mango] = amount
        self.fruits[.pineapple] = amount
    }
    
    func setFruits(_ fruits: [Fruit: Int]) {
        self.fruits = fruits
    }
    
    func decreaseFruit(_ fruit: Fruit, by amount: Int = 1) {
        guard let storedFruit = self.fruits[fruit] else {
            return
        }
        self.fruits[fruit] = storedFruit - amount
    }
    
    func checkFruit(_ fruit: Fruit, by amount: Int) throws {
        guard let storedFruit = self.fruits[fruit] else {
            throw FruitStoreError.noExistInventory
        }
        guard storedFruit >= amount else {
            throw FruitStoreError.lackedInventory(fruit: fruit, lackedAmount: amount - storedFruit)
        }
    }
}
