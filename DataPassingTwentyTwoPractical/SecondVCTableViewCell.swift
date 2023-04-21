//
//  SecondVCTableViewCell.swift
//  DataPassingTwentyTwoPractical
//
//  Created by Mac on 21/04/23.
//

import UIKit

class SecondVCTableViewCell: UITableViewCell {

    @IBOutlet weak var studentNameLabel: UILabel!
    
    @IBOutlet weak var studentIdLabel: UILabel!
    
    @IBOutlet weak var studentCityLabel: UILabel!
    
    @IBAction func backButton(_ sender: Any) {
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
