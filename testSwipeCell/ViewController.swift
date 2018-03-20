//
//  ViewController.swift
//  testSwipeCell
//
//  Created by Jake Lin on 03/11/2017.
//  Copyright © 2017 Jake Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var array = ["abc", "efg" , "hij"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    var testImage: UIImage?
    var testImage2: UIImage?
    var testImage3: UIImage?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! customTableViewCell
        
        
        return cell
    }
    
    /*
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Deleted")
            
           // self.catNames.remove(at: indexPath.row)
           // self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    */
    
    /*
    ///方法1,icon不會自動縮放到最適合的大小
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?{
        
        let ackAction:UITableViewRowAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "") { (action , indexPath ) -> Void in
            print("delete button pressed")
           
            
        }
        
        let deleteImage = UIImageView(image: UIImage(named: "delete_icon_nor.pdf"))
        //let deleteimage = UIImage(named: "pumpkin")?.withRenderingMode(.alwaysOriginal)
        //let deleteImage = UIImageView(image: UIImage(named: "list_icon_delete_nor.pdf"))
        //let deleteImage = UIImageView(image: UIImage(named: "pumpkin"))
        
        //deleteImage.contentMode = .scaleAspectFill
        deleteImage.contentMode = .scaleAspectFit
        
        ackAction.backgroundColor = UIColor(patternImage:deleteImage.image!)
        //ackAction.backgroundColor = UIColor(patternImage:deleteimage!)
        
        
        return [ackAction]
    }
    */
    
    //方法2,icon會變成黑白
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let action =  UIContextualAction(style: .normal, title: "", handler: { (action,view,completionHandler ) in
            //do stuff
            completionHandler(true)
        })
        //action.image = UIImage(named: "delete_icon_nor.pdf")
        //action.image = UIImage(named: "list_icon_delete_nor.pdf")
        action.image = UIImage(named: "pumpkin")?.withRenderingMode(.alwaysOriginal)
        //action.image = UIImage(named: "misslock_icon")
        //action.backgroundColor = .gray
        let confrigation = UISwipeActionsConfiguration(actions: [action])
        
        return confrigation
    }
    
    @IBAction func swipeButton(_ sender: Any) {
        
        print("click")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.rowHeight = 60
        
        testImage = UIImage(named: "delete_icon_nor.pdf")
        testImage3 = UIImage(named: "pumpkin")
        imageView1.contentMode = .scaleAspectFit
        //imageView2?.frame.size.height = 30
        //imageView2?.frame.size.width = 30
        
        imageView1.image = testImage3
        imageView2.image = testImage3
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

