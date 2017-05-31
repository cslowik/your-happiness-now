//
//  ContentsTableViewCell.swift
//

import UIKit
import SnapKit

class ChapterTableViewCell: UITableViewCell {
    
    @IBOutlet weak var chapterTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        // Configure the view for the selected state
        if selected {
            UIView.animate(withDuration: 0.18, animations: { 
                self.backgroundColor = UIColor.azureRadiance
                self.chapterTitle.textColor = UIColor.white
            })
        } else {
            UIView.animate(withDuration: 0.18, animations: {
                self.backgroundColor = UIColor.clear
                self.chapterTitle.textColor = UIColor.ebonyClay
            })
        }
        super.setSelected(selected, animated: false)
    }
    
    
    func setup() {
        backgroundColor = UIColor.clear
        selectionStyle = .none
    }
}
