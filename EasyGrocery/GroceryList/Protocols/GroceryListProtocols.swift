//
//  GroceryListProtocols.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

import UIKit

/*
 Wireframe protocols
 */
protocol GroceryListWireFrameProtocol: class {
    static func createGroceryListModule() -> UIViewController
}

/*
 Presenter protocols
 */
protocol GroceryListPresenterProtocol {
    var view: GroceryListViewProtocol? { get set }
    var interactor: GroceryListInteractorInputProtocol? { get set }
    var wireFrame: GroceryListWireFrameProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
}

/*
Interactor protocols
*/
protocol GroceryListInteractorInputProtocol: class {
    var presenter: GroceryListInteractorOutputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func retrievePostList()
}

protocol GroceryListInteractorOutputProtocol: class {
    
}

/*
GroceryList view protocols
*/
protocol GroceryListViewProtocol: class {
    var presenter: GroceryListPresenterProtocol? { get set }
}
