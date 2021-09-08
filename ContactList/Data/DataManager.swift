//
//  DataManager.swift
//  ContactList
//
//  Created by Повелитель on 07.09.2021.
//

import Foundation

class DataManager {
    // MARK: - Properties
    let names = [
        "Ivan",
        "Franky",
        "Tomas",
        "Pier",
        "Gustav",
        "Basil",
        "Joe",
        "Donald"
    ]
    
    let surnames = [
        "Petroff",
        "Van Baasten",
        "Ivanov",
        "Picard",
        "Berg",
        "Olaffson",
        "Lampard",
        "Chan"
    ]
    
    let cellPhoneNums = [
        "+7(921)123-45-67",
        "+7(925)146-55-76",
        "+7(926)323-75-17",
        "+7(989)539-25-37",
        "+7(963)773-19-24",
        "+7(961)909-95-47",
        "+7(903)221-84-07",
        "+7(901)321-74-01",
    ]
    
    let eMails = [
        "1box@mail.ru",
        "2box@gmail.com",
        "3box@yandex.ru",
        "4box@yahoo.ru",
        "5box@rambler.ru",
        "6box@hotmail.com",
        "7box@apple.com",
        "007@почта.рф",
    ]
    
    // MARK: - Methods
    func getRandomName() -> String {
        
        let result = names.randomElement() ?? ""
        return result
    }
    
    func getRandomSurname() -> String {
        
        let result = surnames.randomElement() ?? ""
        return result
    }
    
    func getRandomCellPhoneNum() -> String {
        
        let result = cellPhoneNums.randomElement() ?? ""
        return result
    }
    
    func getRandomEmail() -> String {
        
        let result = eMails.randomElement() ?? ""
        return result
    }
    /*
     вижу, что код повторяется и понимаю что нужно сделать метод класса, в который
     можно передавать во входящий параметр нужное свойство класса и брать у него рандомныый элемент,
     НО как это реализовать не понимаю.
     что-то вроде такого, например:
     
     func getRandomElement(from property: ????????) -> String {
     let result = property.randomElement() ?? ""
     return result
     }
     
     как здесь указать входной параметр,
     чтобы можно было выбирать из свойст класса?
     ни один из них не доступен.
     
     вот так пробовал - не работает
     func getRandomElement(from property: [String]) -> String {
     let result = property.randomElement() ?? ""
     return result
     }
     
     */
}
