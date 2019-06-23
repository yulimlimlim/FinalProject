//
//  DetailViewController.swift
//  project2
//
//  Created by 정유림 on 2019. 6. 23..
//  Copyright © 2019년 정유림. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {

  
    @IBOutlet var textTitle: UITextField!
    @IBOutlet var textContent: UITextField!
    @IBOutlet var textName: UITextField!
    @IBOutlet var textDate: UITextField!
    
    var detailNotice: NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let notice = detailNotice {
            textTitle.text = notice.value(forKey: "title") as? String
            textContent.text = notice.value(forKey: "content") as? String
            textName.text = notice.value(forKey: "name") as? String
            let dbDate: Date? = notice.value(forKey: "date") as? Date
            let formatter: DateFormatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd h:mm a"
            if let unwrapDate = dbDate {
                textDate.text = formatter.string(from: unwrapDate as Date) }
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

}
