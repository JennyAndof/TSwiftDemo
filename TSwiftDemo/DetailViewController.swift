//
//  DetailViewController.swift
//  TSwiftDemo
//
//  Created by PangChao on 16/1/5.
//  Copyright © 2016年 PangChao. All rights reserved.
//

import UIKit
class DetailViewController:UIViewController{
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor();
        if(self.title == "UILabel"){
            let label = UILabel(frame: self.view.bounds);
            label.backgroundColor = UIColor.clearColor();
            label.textAlignment = NSTextAlignment.Center;
            label.font = UIFont.systemFontOfSize(36);
            label.text = "Hello,Swift";
            self.view.addSubview(label);
        }else if(self.title == "UIButton"){
            let button = UIButton(frame: self.view.bounds);
            button.backgroundColor = UIColor.grayColor();
            button.setTitleColor(UIColor.redColor(), forState: .Normal);
            button.setTitleColor(UIColor.whiteColor(), forState: .Highlighted);
            button.setTitle("Touch Me", forState: UIControlState.Normal);
            button.setTitle("Touch Me", forState: UIControlState.Highlighted);
            button.addTarget(self, action: "buttonAction", forControlEvents: UIControlEvents.TouchUpInside)
        }else if(self.title == "UIImageView"){
        
        }else if(self.title == "UISlider"){
        
        }else if(self.title == "UIWebView"){
        
        }else if(self.title == "UISegmentedControl"){
            
        }else if(self.title == "UISwitch"){
            
        }else if(self.title == "UITextField"){
        
        }else if(self.title == "UIScrollView"){
        
        }else if(self.title == "UISearchBar"){
        
        }else if(self.title == "UIPageControl"){
        
        }else if(self.title == "UIDatePicker"){
        
        }else if(self.title == "UIPickerView"){
        
        }else if(self.title == "UIProgressView"){
        
        }else if(self.title == "UITextView"){
        
        }else if(self.title == "UIToolbar"){
        
        }else if(self.title == "UIActionSheet"){
        
        }else if(self.title == "UIActivityIndicatorView"){
        
        }else if(self.title == "UICollectionView"){
        
        }else{
        
        }
        //按钮点击触发事件
        func buttonAction(sender:UIButton){
            //swift调用oc
            
        }
    }
}