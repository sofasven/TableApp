//
//  InformationVC.swift
//  TableApp
//
//  Created by Sofa on 18.09.23.
//

import UIKit

class InformationVC: UIViewController {
    
    var person: Person?
    
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let person = person else { return }
        title = person.name + " " + person.surname
        emailLbl.text = "Email: \(person.email)"
        phoneLbl.text = "Phone: \(person.numberPhone)"
    }

}
