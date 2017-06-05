//
//  completeTaskViewController.swift
//  DoIt2
//
//  Created by Jesse Bryce on 5/06/17.
//  Copyright © 2017 Jesse Bryce. All rights reserved.
//

import UIKit

class completeTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    var task = Task()
    
    var previousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important{
            taskLabel.text = "‼️\(task.name)"
        }else {
            taskLabel.text = task.name
        }


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
