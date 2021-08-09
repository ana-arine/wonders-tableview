//
//  MaravilhaViewController.swift
//  MaravilhasTableView
//
//  Created by Ana Lucia Fermino de O. Arine on 19/07/21.
//

import UIKit

class MaravilhaViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblMaravilha: UILabel!
    @IBOutlet weak var txtDescricao: UITextView!
    @IBOutlet weak var lblPais: UILabel!

    var maravilha: Wonder?
        
    override func viewDidLoad() {
        super.viewDidLoad()

        lblMaravilha.text = maravilha?.name
        lblPais.text = maravilha?.country
        txtDescricao.text = maravilha?.description
        imageView.image = maravilha?.wonderImage
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
