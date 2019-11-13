//
//  GroceryDetailWireFrame.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

import UIKit

class GroceryDetailWireFrame: GroceryDetailWireFrameProtocol {
    
    class func createGroceryDetailModule(for grocery: Grocery) -> UIViewController {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "GroceryDetailView")
        if let view = viewController as? GroceryDetailView {
            let presenter = GroceryDetailPresenter()
            let wireFrame = GroceryDetailWireFrame()
            view.presenter = presenter
            presenter.view = view
            presenter.grocery = grocery
            presenter.wireFrame = wireFrame
            return viewController
        }
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
