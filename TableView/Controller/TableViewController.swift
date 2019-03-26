//
//  ViewController.swift
//  TableView
//
//  Created by Pablo Castellanos Macin on 3/25/19.
//  Copyright © 2019 Pablo Castellanos Macin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let cellId = "cellId"
    
    let data = [
        "uno",
        "dos",
        "tres",
        "cuatro",
        "cinco"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
    }
    
    func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}

