//
//  SkillCellVC.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/16/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import UIKit

class SkillCellVC: UITableViewCell {

    @IBOutlet weak var skillNameLabel: UILabel!
    @IBOutlet weak var skillModLabel: UILabel!
    @IBOutlet weak var skillProfSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
