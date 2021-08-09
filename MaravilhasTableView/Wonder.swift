//
//  Wonder.swift
//  MaravilhasTableView
//
//  Created by Ana Lucia Fermino de O. Arine on 19/07/21.
//

import UIKit

class Wonder {
    var name: String
    var nameImage: String
    var country: String
    var wonderImage: UIImage
    var description: String
    
    init(nameImage: String, name: String, country: String, description: String) {
        self.nameImage = nameImage
        self.name = name
        self.country = country
        self.description = description
        
        wonderImage = UIImage(named: self.nameImage)!
    }
}
