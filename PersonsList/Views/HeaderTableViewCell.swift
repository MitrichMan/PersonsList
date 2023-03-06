//
//  HeaderTableViewCell.swift
//  PersonsList
//
//  Created by Dmitrii Melnikov on 06.03.2023.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    
    @IBAction func phoneButtonPressed() {
        print("Calling \(nameLabel.text ?? "") \(surnameLabel.text ?? "")...")
    }
}
