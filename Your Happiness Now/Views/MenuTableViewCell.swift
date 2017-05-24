//
//  MenuTableViewCell.swift

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var menuItem: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            menuItem.textColor = UIColor.white
            backgroundColor = UIColor.azureRadiance
        } else {
            menuItem.textColor = UIColor.ebonyClay
            backgroundColor = UIColor.white
        }
    }

}
