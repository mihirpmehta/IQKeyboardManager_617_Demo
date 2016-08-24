//
//  ViewController.swift
//  IQKeyboardManager_617_Demo
//
//  Created by Mihir Mehta on 24/08/16.
//  Copyright © 2016 Mihir Mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return 1
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 83.0
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 76.0
    }
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let sectionHeaderCell:UIView = NSBundle.mainBundle().loadNibNamed("HeaderSectionView", owner: nil, options: nil)[0] as! UIView
        
        return sectionHeaderCell
        
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
       
        
        let variantCell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("VariantCell", forIndexPath: indexPath)
        
            return variantCell
        
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 16.0
    }
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let viewHeight:CGFloat = 16.0
        let footerView = UIView(frame: CGRect(origin: CGPoint(x: 0,y: 0), size: CGSize(width: self.view.frame.size.width, height: viewHeight)))
        footerView.backgroundColor = UIColor(colorLiteralRed: 237.0/255.0, green: 237.0/255.0, blue: 237.0/255.0, alpha: 1.0)
        return footerView
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

}

