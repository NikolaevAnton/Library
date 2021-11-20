//
//  TabBarController.swift
//  Library
//
//  Created by Anton Nikolaev on 19.11.2021.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    

    private func setupViewControllers() {
        guard let simpleVC = viewControllers?.first as? SimpleTableViewController else { return }
        guard let complexVC = viewControllers?.last as? ComplexTableViewController else { return }
        
        let autors = Autor.getAutor()
        
        simpleVC.autors = autors
        complexVC.autors = autors
        
    }

}
