//
//  SecondViewController.swift
//  navigations
//
//  Created by tosy on 12.11.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func sendNewTextBack(_ sender: UIButton) {
        
        
        self.navigationController?.viewControllers.forEach { viewController in
            (viewController as? ViewController)?.updatedData = dataTextField.text ?? ""
            
            
            
        }
        
        
        
    }
    @IBOutlet weak var dataTextField: UITextField!
    var updatingData: String = ""
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
        updateTextFieldData(withText: updatingData)
    }
        private func updateTextFieldData(withText text: String) {
        dataTextField.text = text }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
       
    // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


