//
//  PersonModel.swift
//  TableApp
//
//  Created by Sofa on 13.09.23.
//

import UIKit

struct Person {
    var name: String
    var surname: String
    var email: String
    var numberPhone: String
}

struct PersonData {
    static func createPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataSource.name.shuffled()
        let surnames = DataSource.surname.shuffled()
        let emails = DataSource.email.shuffled()
        let phones = DataSource.numberPhone.shuffled()
        
        for index in 0 ..< names.count {
            let person = Person(name: names[safe: index] ?? "No information",
                                surname: surnames[safe: index] ?? "No information",
                                email: emails[safe: index] ?? "No information",
                                numberPhone: phones[safe: index] ?? "No information")
            persons.append(person)
        }
        return persons
    }
}
extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
