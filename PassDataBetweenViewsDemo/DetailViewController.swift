//
//  DetailViewController.swift
//  PassDataBetweenViewsDemo
//
//  Created by Jerry Huang on 2014/10/19.
//  Copyright (c) 2014年 kerkerj. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var delegate: AppendData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Detail"
        
        delegate?.appendDetail("yaya")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
