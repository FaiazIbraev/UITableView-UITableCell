//
//  ViewController.swift
//  uitable+cell
//
//  Created by Faiaz Ibraev on 4/7/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CurrentCell
        cell.mainLabel.text = "Team member № \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped № \(indexPath.row) cell")
    }
    
    @IBOutlet weak var currentTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentTableView.dataSource = self
        currentTableView.delegate = self
        currentTableView.backgroundColor = .white
    }


}

