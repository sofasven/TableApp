//
//  SecondTVC.swift
//  TableApp
//
//  Created by Sofa on 13.09.23.
//

import UIKit

class SecondTVC: UITableViewController {
    
    let persons = PersonData.createPerson().sorted { a, b -> Bool in a.surname < b.surname }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath)
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.numberPhone
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.name + " " + person.surname
    }
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .lightGray
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
    }
}
