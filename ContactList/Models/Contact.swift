//
//  Contact.swift
//  ContactList
//
//  Created by Повелитель on 07.09.2021.
//

struct Contact {
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Contact] {
        [
            Contact(name: "Ivan", surname: "Grozni"),
            Contact(name: "Ivan", surname: "Kalita"),
            Contact(name: "Dmitri", surname: "Donskoi"),
            Contact(name: "Alex", surname: "Nevski"),
            Contact(name: "Petr", surname: "Romanov"),
            Contact(name: "Alex", surname: "Suvorov"),
            Contact(name: "Vlad", surname: "Monomach"),
            Contact(name: "Uri", surname: "Dolgorooki"),
            
        ]
    }
}
