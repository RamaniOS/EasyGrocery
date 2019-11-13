//
//  LocalDataManager.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

class LocalDataManager: GroceryListLocalDataManagerInputProtocol {
    func retrieveGroceryList() -> [Grocery] {
        return LocalDataStore.items
    }
}
