//
//  ViewController.swift
//  UI TableView Assignment2
//
//  Created by macmini20 on 16/09/2022.
//

import UIKit

struct CellItem {
    var name: String
    var image: UIImage
}

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
//    let names = ["anya", "rize", "inosuke", "yuno", "kimi", "dazai", "sakuna"]
//    let images: [UIImage] = [UIImage.anya, UIImage.rize, UIImage.inosuke, UIImage.yuno, UIImage.kimi, UIImage.dazai, UIImage.sakuna]
    
    var listItem = [CellItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       tableView.delegate = self
        tableView.dataSource = self
        
        listItem = [CellItem(name: "anya", image: .anya), CellItem(name: "rize", image: .rize), CellItem(name: "inosuke", image: .inosuke)]
        
//        tableView.register(UINib(nibName: "CustomCellTableViewCell", bundle: nil), forCellReuseIdentifier: "listCell")
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItem.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! CustomcellTableViewCell
        
    
        cell.iconImageView.image = listItem[indexPath.row].image
        cell.label.text = listItem[indexPath.row].name
               return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        controller.images =  listItem[indexPath.row].image
        controller.labelName = listItem[indexPath.row].name
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
