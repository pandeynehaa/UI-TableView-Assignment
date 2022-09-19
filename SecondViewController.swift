//
//  SecondViewController.swift
//  UI TableView Assignment2
//
//  Created by macmini20 on 19/09/2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    var images: UIImage?
    var labelName : String = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()

            detailLabel.text = labelName
            detailImageView.image = images
        }
 


}
