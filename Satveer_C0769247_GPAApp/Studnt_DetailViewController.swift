//
//  Studnt_DetailViewController.swift
//  Satveer_C0769247_GPAApp
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class Studnt_DetailViewController: UIViewController {
    var testTable:StudentlistTableViewController?
    
    @IBOutlet weak var firstText: UITextField!
    
    @IBOutlet weak var lastText: UITextField!
    
    @IBOutlet weak var studIdtext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func SaveButton(_ sender: Any) {
        
        let frstName = self.firstText.text!
        let lstName = self.lastText.text!
        let studId = self.studIdtext.text!
        
        self.firstText.text = nil
        self.lastText.text = nil
        self.studIdtext.text = nil
        
        let alertSignal = UIAlertController(title: "Save student data", message: "Are you sure", preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "No way", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "ok", style: .default) { (action) in
            let register = StudentReg(firstname: frstName, lastname: lstName, studentId: studId)
            StudentReg.StudentDetail.append(register)
        }
        alertSignal.addAction(cancel)
        alertSignal.addAction(okAction)
        self.present(alertSignal,animated: true,completion: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        testTable?.tableView.reloadData()
    }

  

}
