//
//  ViewController.swift
//  TableViewCellUsingXib
//
//  Created by Mac on 31/10/22.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let StudentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier:  "StudentTableViewCell", for: indexPath) as? StudentTableViewCell
        
        StudentTableViewCell?.RollNo.text = "10"
        StudentTableViewCell?.Name.text = "Sachin"
        StudentTableViewCell?.City.text = "Newasa"
        
        return StudentTableViewCell ?? UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }

    @IBOutlet weak var studentTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        studentTableView.delegate = self
        
        //register with XIB
        
        let nibName = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentTableView.register(nibName, forCellReuseIdentifier: "StudentTableViewCell")
    }


}

