//
//  DetailViewController.swift
//  Library
//
//  Created by Anton Nikolaev on 19.11.2021.
//

import UIKit

class DetailViewController: UIViewController {

    var autor: Autor!
    
    @IBOutlet var nameAutor: UILabel!
    
    @IBOutlet var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameAutor.text = autor.name
    }

}
