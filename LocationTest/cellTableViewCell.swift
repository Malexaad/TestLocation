//
//  cellTableViewCell.swift
//  LocationTest
//
//  Created by Alex Marfutin on 20.03.2020.
//  Copyright © 2020 G9. All rights reserved.
//

import UIKit

class cellTableViewCell: UITableViewCell {

    @IBOutlet var coordinateText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
