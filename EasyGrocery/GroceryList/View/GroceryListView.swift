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
    var items: [Grocery] = []
    
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
    func showGroceryList(with grocery: [Grocery]) {
        items = grocery
        tableView.reloadData()
    }
}

/*
 Manage table view data source and delegate functions
 */
extension GroceryListView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = items[indexPath.row].title
        cell.detailTextLabel?.text = items[indexPath.row].desc
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
