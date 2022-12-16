//
//  StudentTableViewCell.swift
//  TableViewCellUsingXib
//
//  Created by Mac on 31/10/22.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var RollNo: UILabel!
    
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var City: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
