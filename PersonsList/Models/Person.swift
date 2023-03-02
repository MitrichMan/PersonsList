//
//  Person.swift
//  PersonsList
//
//  Created by Dmitrii Melnikov on 02.03.2023.
//

import Foundation

struct Person {
    let fullName: String
    let phone: String
    let email: String
    
}

let newPerson = Person.getPersonData()

extension Person {
    static func getPersonData() -> [Person] {
        var names = names
        var surnames = surnames
        var phones = phones
        var emails = emails
        
        var persons: [Person] = []
        
        while names.count != 0 {
            persons.append(
                Person(
                    fullName: "\(names.remove(at: Int.random(in: 0..<names.count))) \(surnames.remove(at: Int.random(in: 0..<surnames.count)))",
                    phone: phones.remove(at: Int.random(in: 0..<phones.count)),
                    email: emails.remove(at: Int.random(in: 0..<emails.count))
                )
            )
        }
        return persons
    }
}
