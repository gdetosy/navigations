//
//  ViewController.swift
//  navigations
//
//  Created by tosy on 10.11.22.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func goToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
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
