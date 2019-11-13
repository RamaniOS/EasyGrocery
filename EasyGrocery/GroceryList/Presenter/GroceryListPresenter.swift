//
//  GroceryListPresenter.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

class GroceryListPresenter: GroceryListPresenterProtocol {
    
    func viewDidLoad() {
        
    }
    
    weak var view: GroceryListViewProtocol?
    var interactor: GroceryListInteractorInputProtocol?
    var wireFrame: GroceryListWireFrameProtocol?
}

extension GroceryListPresenter: GroceryListInteractorOutputProtocol {
    
}
