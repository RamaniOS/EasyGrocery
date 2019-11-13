//
//  GroceryListView.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

import UIKit

class GroceryListView: UIViewController {
    
    @IBOutlet weak private var tableView: UITableView!
    
    var presenter: GroceryListPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    private func initViews() {
        presenter?.viewDidLoad()
        tableView.tableFooterView = UIView()
        title = "Grocery List"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension GroceryListView: GroceryListViewProtocol {
    
}

/*
 Manage table view data source and delegate functions
 */
extension GroceryListView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
