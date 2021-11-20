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

struct MoreInfoAboutAutors {
    static func getYearsOfLife(nameAutor: String) -> String {
        var yearsOfLife = ""
        
        switch nameAutor {
        case "Айзек Азимов":
            yearsOfLife = "2 января 1920 г. - 6 апреля 1992 г"
        case "Пол Андерсон":
            yearsOfLife = "4 марта 1965 г. - ..."
        case "Альфред Бестер":
            yearsOfLife = "18 декабря 1913 г. - 30 сентября 1987 г."
        case "Джеймс Блиш":
            yearsOfLife = "23 мая 1921 г - 30 июля 1975 г."
        case "Нельсон С. Бонд":
            yearsOfLife = "23 ноября, 1908 - 4 ноября 2006 г."
        case "Фредерик Браун":
            yearsOfLife = "29 октября 1906 г. - 11 марта 1972 г."
        case "Рэй Брэдбери":
            yearsOfLife = "22 августа 1920 г. - 5 июня 2012 г"
        default:
            yearsOfLife = "7 декабря 1915 г. - 17 марта 1978 г."
        }
        
        
        return yearsOfLife
    }
}
