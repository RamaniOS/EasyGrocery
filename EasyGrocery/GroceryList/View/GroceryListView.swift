//
//  GroceryListView.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

import UIKit

class GroceryListView: UIViewController {
    
    var presenter: GroceryListPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    private func initViews() {
        presenter?.viewDidLoad()
        title = "Grocery List"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension GroceryListView: GroceryListViewProtocol {
    
}

