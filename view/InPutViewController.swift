//
//  InPutViewController.swift
//  view
//
//  Created by 정소연 on 2018. 7. 29..
//  Copyright © 2018년 정소연. All rights reserved.
//

import UIKit

class InPutViewController: UIViewController {
    
    var delgate:BookDetailViewController?

    @IBOutlet weak var myTextField: UITextField!
    @IBAction func buttonCliked(_ sender: Any) {
      delgate?.myText = myTextField.text
      self.dismiss(animated:true, completion: nil) 
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
