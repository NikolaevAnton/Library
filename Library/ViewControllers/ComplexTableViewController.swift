//
//  ComplexTableViewController.swift
//  Library
//
//  Created by Anton Nikolaev on 19.11.2021.
//

import UIKit

class ComplexTableViewController: UITableViewController {

    var autors:[Autor] = []

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        autors[section].name
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return autors.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Autor", for: indexPath)

        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = autors[indexPath.section].yearsOfLife
        default:
            content.text = autors[indexPath.section].books
        }
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? DetailViewController else { return }
            detailVC.autor = autors[indexPath.section]
        }
    }
    

}
