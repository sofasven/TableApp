//
//  FirstTVC.swift
//  TableApp
//
//  Created by Sofa on 13.09.23.
//

import UIKit

class FirstTVC: UITableViewController {
    
    var persons = PersonData.createPerson().sorted { a, b -> Bool in
        a.surname < b.surname
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = "\(person.name) \(person.surname)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool { true }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool { true }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentPerson = persons.remove(at: fromIndexPath.row)
        persons.insert(currentPerson, at: to.row)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let infVC = segue.destination as? InformationVC,
           let indexPath = tableView.indexPathForSelectedRow {
            infVC.person = persons[indexPath.row]
        }
    }

}
