//
//  BookDetailViewController.swift
//  view
//
//  Created by 정소연 on 2018. 7. 27..
//  Copyright © 2018년 정소연. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var coverTitle: UILabel!
    var selectedBook:Book?
    @IBOutlet weak var resultLabel: UITextField!
    var myText:String?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let book = selectedBook else {
            return
        }
        self.navigationItem.title = book.title
        coverTitle.text = book.title
        
        if let coverImage = book.coverImage {
            coverImageView.image = coverImage
        }
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let inPutVC = segue.destination as? InPutViewController
        inPutVC?.delgate = self
    }

}
