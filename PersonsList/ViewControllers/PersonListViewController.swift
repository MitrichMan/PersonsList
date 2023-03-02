//
//  PersonListViewController.swift
//  PersonsList
//
//  Created by Dmitrii Melnikov on 02.03.2023.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    private let persons = newPerson
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? PersonDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.person = persons[indexPath.row]
    }

    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
}