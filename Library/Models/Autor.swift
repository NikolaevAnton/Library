//
//  Autor.swift
//  Library
//
//  Created by Anton Nikolaev on 20.11.2021.
//

import Foundation

struct Autor {
    let name: String
    let yearsOfLife: String
}

extension Autor {
    static func getAutor()->[Autor] {
        var autors:[Autor] = []
        let names = DataManager.shared.fullNameAutor.shuffled()
        for index in 0..<names.count {
            let autor = Autor(name: names[index],
                              yearsOfLife: MoreInfoAboutAutors.getYearsOfLife(nameAutor: names[index]))
            autors.append(autor)
        }
        return autors
    }
}
