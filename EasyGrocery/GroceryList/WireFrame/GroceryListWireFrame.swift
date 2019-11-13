//
//  GroceryListPresenter.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

import UIKit

class GroceryListWireFrame: GroceryListWireFrameProtocol {

    static func createGroceryListModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "EasyGroceryNavigationController")
        if let view = navController.children.first as? GroceryListView {
            let presenter = GroceryListPresenter()
            let interactor = GroceryListInteractor()
            let router = GroceryListWireFrame()
            let localDataManager = LocalDataManager()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.wireFrame = router
            interactor.presenter = presenter
            interactor.localDataManager = localDataManager
            return navController
        }
        return navController
    }
    
    func presentGroceryDetailScreen(from view: GroceryListViewProtocol, for grocery: Grocery) {
        let detailViewController = GroceryDetailWireFrame.createGroceryDetailModule(for: grocery)
        if let sourceView = view as? UIViewController {
            sourceView.navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
