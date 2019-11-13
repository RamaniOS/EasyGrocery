//
//  GroceryDetailView.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

import UIKit

class GroceryDetailView: UIViewController {
    
    var presenter: GroceryDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension GroceryDetailView: GroceryDetailViewProtocol {
    func showGroceryDetail(for grocery: Grocery) {
        print("Title: \(grocery.title)")
        print("Desc: \(grocery.desc)")
    }
}
