//
//  GroceryDetailProtocolds.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

import UIKit

protocol GroceryDetailViewProtocol: class {
    var presenter: GroceryDetailPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showGroceryDetail(for grocery: Grocery)
}

protocol GroceryDetailWireFrameProtocol: class {
    static func createGroceryDetailModule(for grocery: Grocery) -> UIViewController
}

protocol GroceryDetailPresenterProtocol: class {
    var view: GroceryDetailViewProtocol? { get set }
    var wireFrame: GroceryDetailWireFrameProtocol? { get set }
    var grocery: Grocery? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
}
