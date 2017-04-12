//
//  PrimeTableViewCell.swift
//  SwiftGame
//
//  Created by Mattias Tengzelius on 2017-04-12.
//  Copyright © 2017 Mattias Tengzelius. All rights reserved.
//

import UIKit
import Foundation

class PrimeTableViewCell: UITableViewCell {

    @IBOutlet weak var PrimeLabelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
