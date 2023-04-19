//
//  BookTableViewCell.swift
//  Mybook
//
//  Created by Алексей Шамрей on 14.04.23.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var bookImageView: UIImageView!
    
    @IBOutlet weak var postName: UILabel!
    
    @IBOutlet weak var bookDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
