//
//  CurrentCell.swift
//  uitable+cell
//
//  Created by Faiaz Ibraev on 4/7/22.
//

import UIKit

class CurrentCell: UITableViewCell {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainLabel.backgroundColor = .black
        mainLabel.textColor = .white
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
