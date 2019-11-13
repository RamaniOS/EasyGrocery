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
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.wireFrame = router
            interactor.presenter = presenter
            return navController
        }
        return navController
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
