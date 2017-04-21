//
//  ViewController.swift
//  HarmanHomeWork
//
//  Created by артем on 19.04.17.
//  Copyright © 2017 артем. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    @IBAction func addIsClicked(_ sender: Any) {
//        let addNotePage = storyboard?.instantiateViewController(withIdentifier: "addNotePage")
//        self.navigationController?.pushViewController(addNotePage!, animated: true)
//    }

//    @IBAction func plusIsClicked(_ sender: Any) {
//        let addNotePage = storyboard?.instantiateViewController(withIdentifier: "addNotePage")
//        self.navigationController?.pushViewController(addNotePage!, animated: true)
////        present(addNotePage!, animated: true, completion: nil)
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

