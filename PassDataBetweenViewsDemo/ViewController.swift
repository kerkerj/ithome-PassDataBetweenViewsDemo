//
//  ViewController.swift
//  PassDataBetweenViewsDemo
//
//  Created by Jerry Huang on 2014/10/19.
//  Copyright (c) 2014年 kerkerj. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AppendData {
    
    var tableView: UITableView?
    var arr = ["A", "B", "C"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Grouped)
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        
        self.view.addSubview(tableView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        self.tableView?.reloadData()
    }
    
    func appendDetail(content: String) {
        arr.append(content)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("cell") as? UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.text = arr[indexPath.row]
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var detailViewController: DetailViewController = DetailViewController()
        detailViewController.delegate = self
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }

}

