//
//  RootViewController.swift
//  TSwiftDemo
//
//  Created by PangChao on 16/1/4.
//  Copyright © 2016年 PangChao. All rights reserved.
//

import UIKit;

class RootViewController:UIViewController,UITableViewDelegate,UITableViewDataSource{
    var tableView:UITableView?;
    var items:NSArray?;
    
    override func viewDidLoad() {
        self.title = "Swift";
        self.items = ["UILabel", "UIButton", "UIImageView", "UISlider", "UIWebView", "UISegmentedControl", "UISwitch", "UITextField", "UIScrollView", "UISearchBar", "UIPageControl", "UIDatePicker", "UIPickerView", "UIProgressView", "UITextView", "UIToolbar", "UIActionSheet", "UIActivityIndicatorView", "UICollectionView"];
        
        self.tableView = UITableView(frame: self.view.frame, style: .Plain);
        self.tableView?.delegate = self;
        self.tableView?.dataSource = self;
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell");
        self.view.addSubview(self.tableView!);
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell;
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator;
        cell.textLabel?.text = self.items?.objectAtIndex(indexPath.row) as? String;
        return cell;
    }
    
    //UITableView`s DataSource Method
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items!.count;
    }
    
    //UITableView`s Delegate Method
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        self.tableView?.deselectRowAtIndexPath(indexPath, animated: true);
        let detailViewController = DetailViewController();
        detailViewController.title = self.items?.objectAtIndex(indexPath.row) as? String;
        self.navigationController?.pushViewController(detailViewController, animated: true);
    }
    
    override func didReceiveMemoryWarning() {
        
    }
}