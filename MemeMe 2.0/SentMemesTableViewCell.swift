//
//  SentMemesTableViewCell.swift
//  MemeMe 2.0
//
//  Created by Peter Khotpanya on 10/28/16.
//  Copyright © 2016 Peter Khotpanya. All rights reserved.
//

import UIKit

class SentMemesTableViewCell: UITableViewCell {

    @IBOutlet weak var sentMemesImageView: UIImageView!
    @IBOutlet weak var sentMemesLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
