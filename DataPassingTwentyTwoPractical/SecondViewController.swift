//
//  SecondViewController.swift
//  DataPassingTwentyTwoPractical
//
//  Created by Mac on 21/04/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    var studentContainer:Student?
    
    var students = [Student]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        secondTableViewCellXIB()
        containerToproperties()
        

         }
    
    func containerToproperties()
    {
        let sName = studentContainer?.name
        let sEmailId = studentContainer?.emailid
        let sCity  = studentContainer?.city
        
        students.append(Student(name: sName!, emailid: sEmailId!, city: sCity!))
        //tableView.reloadData()
    }
func secondTableViewCellXIB()
    {
        
        self.tableView.register(UINib(nibName: "SecondVCTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondVCTableViewCell")
        
    }


}
extension SecondViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var studentCellData = self.tableView.dequeueReusableCell(withIdentifier: "SecondVCTableViewCell", for: indexPath) as? SecondVCTableViewCell
        
        
        
        
        studentCellData?.studentNameLabel.text = students[indexPath.row].name
        studentCellData?.studentIdLabel.text = students[indexPath.row].emailid
        studentCellData?.studentCityLabel.text = students[indexPath.row].city
        
        return studentCellData!
    }
    
        
}
extension SecondViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        500.00
    }
}
