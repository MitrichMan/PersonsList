//
//  TabBarController.swift
//  PersonsList
//
//  Created by Dmitrii Melnikov on 05.03.2023.
//

import UIKit

class TabBarController: UITabBarController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personListVC = viewControllers?.first as? PersonListViewController else {
            return
        }
        guard let sectionedVC = viewControllers?.last as? SectionedPersonListViewController else {
            return
        }
        
        let personList = Person.getPersonList()
        personListVC.personList = personList
        sectionedVC.personList = personList
    }
}
