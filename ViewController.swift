//
//  ViewController.swift
//  quantum-iOS-project
//
//  Created by suryansh Bisen on 03/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
    }
    
    @objc func tapOnButton(){
        let story = UIStoryboard(name: "TabBar_Storyboard", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "tabbarStoryboard") as! TabBarViewController
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
    
    
}

