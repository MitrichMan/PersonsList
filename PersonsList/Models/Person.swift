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
        
        for index in 0..<names.count {
            personList.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        
        //        while names.count != 0 {
        //            personList.append(
        //                Person(
        //                    name: names.remove(at: Int.random(in: 0..<names.count)),
        //                    surname: surnames.remove(at: Int.random(in: 0..<surnames.count)),
        //                    phone: phones.remove(at: Int.random(in: 0..<phones.count)),
        //                    email: emails.remove(at: Int.random(in: 0..<emails.count))
        //                )
        //            )
        //        }
        return personList
    }
}
