//
//  bookListTableViewController.swift
//  view
//
//  Created by 정소연 on 2018. 7. 27..
//  Copyright © 2018년 정소연. All rights reserved.
//

import UIKit



class bookListTableViewController: UITableViewController {
    
    var books:[Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        let book1 = Book(title: "소연이 존나 졸리다" , wirter: "정소연", coverImage: UIImage(named: "book1" ))
        let book2 = Book(title: "좀 알것 같기도 한데...", wirter: "정소연님", coverImage: UIImage(named: "book2"))
        let book3 = Book(title: "울지말자", wirter: "꿈빛파티시엘", coverImage: UIImage(named: "book3"))
        
        books.append(book1)
        books.append(book2)
        books.append(book3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)


        // Configure the cell...
        let book = books[indexPath.row]
        
        cell.textLabel?.text = book .title
        cell.detailTextLabel?.text = book.wirter
        
        if let coverimage = book.coverImage {
            cell.imageView?.image = coverimage
        }
     
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let secondViewController = segue.destination as? BookDetailViewController
        
        let selectedIndexPath = self.tableView.indexPathForSelectedRow
        
        if let indexPath = selectedIndexPath{
            secondViewController?.selectedBook = books[indexPath.row]
        }
        
    }
}

