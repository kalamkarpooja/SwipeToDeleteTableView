//
//  ViewController.swift
//  SwipeToDelete
//
//  Created by Mac on 01/04/23.
//

import UIKit

class ViewController: UIViewController {
var name = ["Pooja","Akshay","Mayuri","Rushi","Panuu","Mayur","akanksha","Shekhar","Kiran","Komal"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = name[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            name.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
     }
}

