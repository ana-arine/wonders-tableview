//
//  ListaTableViewCell.swift
//  MaravilhasTableView
//
//  Created by Ana Lucia Fermino de O. Arine on 20/07/21.
//

import UIKit

class ListaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var wonderImage: UIImageView!
    @IBOutlet weak var wonderLbl: UILabel!
    @IBOutlet weak var countryLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
