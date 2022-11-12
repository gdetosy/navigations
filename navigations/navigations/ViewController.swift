//
//  ViewController.swift
//  navigations
//
//  Created by tosy on 10.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    var updatedData: String = ""
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated);updateLabel1(withText: updatedData)
    }
    // Обновляем данные в текстовой метке
    private func updateLabel1(withText text: String) {
    dataLabel1.text = updatedData }
    
    
    
    @IBOutlet weak var dataLabel: UILabel!
    
    @IBOutlet weak var dataLabel1: UITextField!
    @IBAction func editDataWithProperty(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier:"SecondViewController") as! SecondViewController
        editScreen.updatingData = dataLabel1.text ?? ""
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    @IBAction func goToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }

    @IBAction func goBackYellowScene(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func goBackToBlue(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func toYellowView(_ sender: UIButton) {
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "yellowViewController")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }

    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
