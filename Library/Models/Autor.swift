//
//  Autor.swift
//  Library
//
//  Created by Anton Nikolaev on 20.11.2021.
//

import Foundation
import UIKit

struct Autor {
    let name: String
    let yearsOfLife: String
    let books: String
    let quote: String
}

extension Autor {
    static func getAutor()->[Autor] {
        var autors:[Autor] = []
        let names = DataManager.shared.fullNameAutor.shuffled()
        for index in 0..<names.count {
            let autorName = names[index]
            let allInfo = DataManager.getAllInfo(nameAutor: autorName)
            let autor = Autor(name: autorName,
                              yearsOfLife: allInfo.yearsOfLife,
                              books: allInfo.bestBook,
                              quote: allInfo.quote)
            autors.append(autor)
        }
        return autors
    }
    
    static func getPhoto(nameAutor: String)-> UIImage {
        guard let photo = UIImage(named: DataManager.shared.photoAutors[nameAutor] ?? "azimov") else { return UIImage.remove }
        return photo
    }
}
