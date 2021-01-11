//
//  HomePageOneViewController.swift
//  Gmail UI
//
//  Created by Danish on 11/01/21.
//  Copyright © 2021 Danish. All rights reserved.
//

import Foundation

import UIKit


class HomePageOneViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        registerCells()
    }
    
    
    func registerCells() {
        
        self.tblView.register(UINib(nibName: HomeTableViewCell.identifier, bundle: Bundle.main), forCellReuseIdentifier:
            
            HomeTableViewCell.identifier)
        
    }
    
}



extension HomePageOneViewController{
    
    // MARK: - ---TABLEVIEW---
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell?
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as! HomeTableViewCell
        
                
       // tableViewCell.configure(with: arrUserClassesToTeach[indexPath.row])
                
                
        cell = tableViewCell
       
        cell?.selectionStyle = .none
        
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
}
