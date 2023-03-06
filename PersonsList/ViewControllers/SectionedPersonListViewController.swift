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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.rows[indexPath.row]
        content.image = indexPath.row == 0
        ? UIImage(systemName: Contacts.phone.rawValue)
        : UIImage(systemName: Contacts.email.rawValue)
        
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - UITableViewDelegate
extension SectionedPersonListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as? HeaderTableViewCell
        let person = personList[section]
        cell?.nameLabel.text = person.name
        cell?.surnameLabel.text = person.surname
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let fullNameLabel = UILabel(
//            frame: CGRect(
//                x: 16,
//                y: 3,
//                width: tableView.frame.width,
//                height: 20
//            )
//        )
//        fullNameLabel.text = personList[section].fullName
//        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
//        fullNameLabel.textColor = .white
//
//        let contentView = UIView()
//        contentView.addSubview(fullNameLabel)
//
//        return contentView
//    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .gray
    }
    
//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        60
//    }
}

