//
//  Person.swift
//  PersonsList
//
//  Created by Dmitrii Melnikov on 02.03.2023.
//

import Foundation

struct Person {
    var name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        let names = PersonsData.getPersonsData().names.shuffled()
        let surnames = PersonsData.getPersonsData().surnames.shuffled()
        let phones = PersonsData.getPersonsData().phones.shuffled()
        let emails = PersonsData.getPersonsData().emails.shuffled()
        
        var personList: [Person] = []
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            personList.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        return personList
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}

