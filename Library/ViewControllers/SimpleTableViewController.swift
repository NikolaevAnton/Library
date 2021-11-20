//
//  SimpleTableViewController.swift
//  Library
//
//  Created by Anton Nikolaev on 19.11.2021.
//

import UIKit

class SimpleTableViewController: UITableViewController {

    var autors:[Autor] = []

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return autors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Autor", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = autors[indexPath.row].name
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
            detailVC.autor = autors[indexPath.row]
        }
    }
    

}
