//
//  GroceryDetailPresenter.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

class GroceryDetailPresenter: GroceryDetailPresenterProtocol {
    
    weak var view: GroceryDetailViewProtocol?
    var wireFrame: GroceryDetailWireFrameProtocol?
    var grocery: Grocery?
    
    func viewDidLoad() {
        view?.showGroceryDetail(for: grocery!)
    }
}
