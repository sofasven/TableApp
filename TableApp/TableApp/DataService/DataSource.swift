//
//  DataSource.swift
//  TableApp
//
//  Created by Sofa on 13.09.23.
//

import UIKit

class DataSource {
    
    var name: [String] = ["Name1", "Name2", "Name3", "Name4", "Name5", "Name6", "Name7", "Name8", "Name9", "Name10"]
    var surname: [String] = ["Surname1", "Surname2", "Surname3", "Surname4", "Surname5", "Surname6", "Surname7", "Surname8", "Surname9", "Surname10"]
    var email: [String] = ["email1@gmail.com", "email2@gmail.com", "email3@gmail.com", "email4@gmail.com", "email5@gmail.com", "email6@gmail.com", "email7@gmail.com", "email8@gmail.com", "email9@gmail.com", "email10@gmail.com"]
    var numberPhone: [String] = ["+375(11)111-11-11", "+375(11)222-22-22", "+375(11)333-33-33", "+375(11)444-44-44", "+375(11)555-55-55", "+375(11)666-66-66", "+375(11)777-77-77", "+375(11)888-88-88", "+375(11)999-99-99", "+375(11)000-00-00"]
    
    var persons: [Person] = []
    
    func createPerson() {
        for _ in 1...10 {
            if let randomName = name.randomElement(),
               let randomSurname = surname.randomElement(),
               let randomEmail = email.randomElement(),
               let randomNumber = numberPhone.randomElement() {
                let person = Person(name: randomName, surname: randomSurname, email: randomEmail, numberPhone: randomNumber)
                    persons.append(person)
            }
        }
    }
    
    
}
