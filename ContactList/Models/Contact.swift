//
//  Contact.swift
//  ContactList
//
//  Created by Повелитель on 07.09.2021.
//

struct Contact {
    
    // MARK: - Properties
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    // MARK: - Methods
    static func getContactList() -> [Contact] {
    
        var contactsData: [Contact] = []
        
        let data = DataManager()
        
        for _ in 1...8 {
            let contact = Contact (
                name: data.getRandomName(),
                surname: data.getRandomSurname(),
                phone: data.getRandomCellPhoneNum(),
                email: data.getRandomEmail()
            )
            /*
             здесь я не смог реализовать проверку параметров создаваемого
             экземпляра структуры перед добавлением его в массив.
             
             
             if contact.name != параметру name всех элементов массива contactsData
             как это сделать?)
             */
            contactsData.append(contact)
            }
        return contactsData
    }
}
