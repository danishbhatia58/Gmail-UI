//
//  HomeTableViewCell.swift
//  Gmail UI
//
//  Created by Danish on 11/01/21.
//  Copyright © 2021 Danish. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var personImage: UIImageView!
    
    static let identifier = Storyboard.identifiers.homeTableViewCell
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        personImage.makeRounded()
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
