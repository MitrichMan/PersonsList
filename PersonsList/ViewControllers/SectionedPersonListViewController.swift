//
//  SectionedPersonListViewController.swift
//  PersonsList
//
//  Created by Dmitrii Melnikov on 02.03.2023.
//

import UIKit

final class SectionedPersonListViewController: UITableViewController {
    
    var personList: [Person] = []
}
// MARK: - UITableViewDataSource
extension SectionedPersonListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         2
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.section]
        if indexPath.row == 0 {
            content.image = UIImage(systemName: Contacts.phone.rawValue)
            content.text = person.phone
        } else {
            content.image = UIImage(systemName: Contacts.email.rawValue)
            content.text = person.email
        }
        cell.contentConfiguration = content
        return cell
    }
}

