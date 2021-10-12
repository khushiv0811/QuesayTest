//
//  ViewController.swift
//  Quesay
//
//  Created by Kushboo Patel on 10/12/21.
//

import UIKit

class Home_VC: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    //MARK: Properties/IBOutlets
    @IBOutlet weak var tableview : UITableView!
    
    
    
    
    //MARK: - App life cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - Table view data source
    
    ///Returns the number of rows displayed in a table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 8
    }
    
    ///Configure you cell here
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "home_tableviewcell", for: indexPath) as! home_tableviewcell
        cell.setupcell_home(index: indexPath)
        return cell
    }
    

}

