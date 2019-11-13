//
//  GroceryListInteractor.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

class GroceryListInteractor: GroceryListInteractorInputProtocol {
    
    weak var presenter: GroceryListInteractorOutputProtocol?
    
    func retrievePostList() {
    }
}

extension GroceryListInteractor: GroceryListInteractorOutputProtocol {
    
}
