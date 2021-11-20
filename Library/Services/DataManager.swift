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
    
    static func getBestBook(nameAutor: String) -> String {
        var bestBook = ""
        switch nameAutor {
        case "Айзек Азимов":
            bestBook = "Основание * Я, робот * Основание и Империя"
        case "Пол Андерсон":
            bestBook = "Три сердца и три льва"
        case "Альфред Бестер":
            bestBook = "Тигр! Тигр!"
        case "Джеймс Блиш":
            bestBook = "Star Trek 1"
        case "Нельсон С. Бонд":
            bestBook = "Colossus of Chaos"
        case "Фредерик Браун":
            bestBook = "Ночь невнятной болтовни"
        case "Рэй Брэдбери":
            bestBook = "451 градус по Фаренгейту"
        default:
            bestBook = "Дальний прыжок"
        }
        return bestBook
    }
}
