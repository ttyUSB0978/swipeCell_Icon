//
//  customTableViewCell.swift
//  testSwipeCell
//
//  Created by Jake Lin on 03/11/2017.
//  Copyright © 2017 Jake Lin. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet var swipeButton: UIButton!
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
