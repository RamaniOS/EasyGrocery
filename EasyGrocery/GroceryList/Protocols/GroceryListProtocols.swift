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
    // PRESENTER -> WIREFRAME
    func presentGroceryDetailScreen(from view: GroceryListViewProtocol, for grocery: Grocery)
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
    func showGroceryDetail(for grocery: Grocery)
}

/*
Interactor protocols
*/
protocol GroceryListInteractorInputProtocol: class {
    var presenter: GroceryListInteractorOutputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func retrieveGroceryList()
}

protocol GroceryListInteractorOutputProtocol: class {
    // INTERACTOR -> PRESENTER
    func didRetrieveGrocery(_ grocery: [Grocery])
}

/*
GroceryList view protocols
*/
protocol GroceryListViewProtocol: class {
    var presenter: GroceryListPresenterProtocol? { get set }
    // PRESENTER -> VIEW
    func showGroceryList(with grocery: [Grocery])
}

/*
GroceryList local data protocols
*/
protocol GroceryListLocalDataManagerInputProtocol: class {
     // INTERACTOR -> LOCALDATAMANAGER
    func retrieveGroceryList() -> [Grocery]
}
