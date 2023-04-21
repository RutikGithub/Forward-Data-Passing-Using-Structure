//
//  ViewController.swift
//  DataPassingTwentyTwoPractical
//
//  Created by Mac on 21/04/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var studentName: UITextField!
    
    @IBOutlet weak var studentId: UITextField!
    
    @IBOutlet weak var studentCity: UITextField!
    
    var secondViewController:SecondViewController?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: Any)
    {
        let extractStudentName = self.studentName.text
        let extractStudentId = self.studentId.text
        let extractStudentCity = self.studentCity.text
        
        
        
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        
        secondViewController?.studentContainer = Student(name: extractStudentName ?? "No Value",
                                                         emailid: extractStudentId ?? "No Email-ID",
                                                         city: extractStudentCity ?? "No City")
        
        
        navigationController?.pushViewController(secondViewController!, animated: true)
        
    }

}

