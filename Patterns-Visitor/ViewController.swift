//
//  ViewController.swift
//  Patterns-Visitor
//
//  Created by Ruslan on 29.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCell()
    }
    
    func registerCell() {
        myTableView.register(FirstCell.self, forCellReuseIdentifier: "FirstCell")
        myTableView.register(SecondCell.self, forCellReuseIdentifier: "SecondCell")
        myTableView.register(ThirdCell.self, forCellReuseIdentifier: "ThirdCell")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
            cell.backgroundColor = .systemGray
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath)
            cell.backgroundColor = .systemMint
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: "ThirdCell", for: indexPath)
            cell.backgroundColor = .systemCyan
        default:
            break
        }
        
        return cell
    }
}

