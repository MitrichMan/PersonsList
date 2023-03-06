//
//  File.swift
//  PersonsList
//
//  Created by Dmitrii Melnikov on 02.03.2023.
//

final class PersonsData {
    static let shared = PersonsData()
    
    let names = [
        "John",
        "Sharon",
        "Aaron",
        "Steven",
        "Nikola",
        "Ted",
        "Bruce",
        "Carl",
        "Alan",
        "Tim"
    ]
    
    let surnames = [
        "Black",
        "Murphy",
        "Williams",
        "Dow",
        "Smith",
        "Pennyworth",
        "Jankin",
        "Robertson",
        "Isaacson",
        "Buttler",
    ]
    
    let phones = [
        "888-999-123",
        "767-322-444",
        "321-123-332",
        "468-246-682",
        "135-357-579",
        "102-938-475",
        "657-483-920",
        "147-258-369",
        "987-654-321",
        "555-663-888"
    ]
    
    let emails = [
        "qwe@mail.net",
        "asd@mail.net",
        "zxc@mail.net",
        "rty@mail.net",
        "fgh@mail.net",
        "vbn@mail.net",
        "uio@mail.net",
        "jkl@mail.net",
        "mlp@mail.net",
        "qaz@mail.net"
    ]
    
    private init() {}
}
