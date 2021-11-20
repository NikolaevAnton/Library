//
//  DataManager.swift
//  Library
//
//  Created by Anton Nikolaev on 20.11.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let fullNameAutor = [
        "Айзек Азимов",
        "Пол Андерсон",
        "Альфред Бестер",
        "Джеймс Блиш",
        "Нельсон С. Бонд",
        "Фредерик Браун",
        "Рэй Брэдбери",
        "Ли Брэкетт"
    ]
    
    private init() {}
}
