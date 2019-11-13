//
//  GroceryListPresenter.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

class GroceryListPresenter {
    weak var view: GroceryListViewProtocol?
    var interactor: GroceryListInteractorInputProtocol?
    var wireFrame: GroceryListWireFrameProtocol?
}

extension GroceryListPresenter: GroceryListPresenterProtocol {
    
    func viewDidLoad() {
        interactor?.retrieveGroceryList()
    }
    
    func showGroceryDetail(for grocery: Grocery) {
        wireFrame?.presentGroceryDetailScreen(from: view!, for: grocery)
    }
}

extension GroceryListPresenter: GroceryListInteractorOutputProtocol {
    
    func didRetrieveGrocery(_ grocery: [Grocery]) {
        view?.showGroceryList(with: grocery)
    }
}
