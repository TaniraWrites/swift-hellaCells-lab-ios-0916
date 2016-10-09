//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Tanira Wiggins on 10/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {

    var numbers = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for number in 1...100{
            numbers.append(number)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        cell.textLabel?.text = String(numbers[indexPath.row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "segue" { return }
        if let dest = segue.destination as? HellaDetailViewController, let indexPath = tableView.indexPathForSelectedRow {
            dest.passedNumber = numbers[indexPath.row]
        }
    }
}
