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
            var cgrect = CGRect(x: 100, y: 120, width: 100, height: 50);
            let button = UIButton(frame: cgrect);
            button.backgroundColor = UIColor.grayColor();
            button.setTitleColor(UIColor.redColor(), forState: .Normal);
            button.setTitleColor(UIColor.whiteColor(), forState: .Highlighted);
            button.setTitle("Touch Me", forState: UIControlState.Normal);
            button.setTitle("Touch Me", forState: UIControlState.Highlighted);
            button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
            self.view.addSubview(button);
        }else if(self.title == "UIImageView"){
            let image = UIImage(named: "111");
            let cgRect = CGRect(x: (CGRectGetWidth(self.view.bounds)-image!.size.width)/2.0, y: 120, width: image!.size.width, height: image!.size.height);
            let imageView = UIImageView(frame: cgRect);
            imageView.image = image;
            self.view.addSubview(imageView);
        }else if(self.title == "UISlider"){
            let cgrect = CGRect(x: 60, y: 100, width: 200, height: 30);
            let slider = UISlider(frame:cgrect);
            self.view.addSubview(slider);
        }else if(self.title == "UIWebView"){
            let webView = UIWebView(frame: self.view.bounds);
            let url = NSURL(string: "http://oa.lonwin.cn");
            let request = NSURLRequest(URL: url!);
            webView.loadRequest(request);
            self.view.addSubview(webView);
//            var webView = UIWebView(frame:self.view.bounds)
//            var url = NSURL(string: "http://caipiao.m.taobao.com")
//            var request = NSURLRequest(URL: url!)
//            webView.loadRequest(request)
//            self.view.addSubview(webView)
        }else if(self.title == "UISegmentedControl"){
            let segment = UISegmentedControl(items: ["Hello","Swift","Good","Morning"]);
            segment.frame = CGRect(x: 100, y: 100, width: 200, height: 30);
            self.view.addSubview(segment);
        }else if(self.title == "UISwitch"){
            let cgRect = CGRect(x: 130, y: 120, width: 100, height: 30);
            let switchControl = UISwitch(frame: cgRect);
            switchControl.on = true;
            self.view.addSubview(switchControl);
        }else if(self.title == "UITextField"){
            let cgRect = CGRect(x: 100, y: 100, width: 200, height: 30)
            let textfield = UITextField(frame: cgRect);
            textfield.text = "Hello,Swift";
            self.view.addSubview(textfield);
        }else if(self.title == "UIScrollView"){
            var scrollView = UIScrollView(frame:CGRectMake(60.0, 120.0, 200.0, 200.0))
            scrollView.pagingEnabled = true
            scrollView.showsVerticalScrollIndicator = false
            self.view.addSubview(scrollView)

            
            var fx:CGFloat = 0.0;
            for(var i = 0;i<3;i++){
                var view = UIView(frame:CGRectMake(fx, 0.0, 200.0, 200.0))
                fx += 200.0;
                view.backgroundColor = UIColor.redColor();
                scrollView.addSubview(view);
            }
            scrollView.contentSize = CGSizeMake(3*200.0, 200.0);
            self.view.addSubview(scrollView);
            
//            var scrollView = UIScrollView(frame:CGRectMake(60.0, 120.0, 200.0, 200.0))
//            scrollView.pagingEnabled = true
//            scrollView.showsVerticalScrollIndicator = false
//            self.view.addSubview(scrollView)
//            
//            var fX: CGFloat = 0.0
//            for(var i = 0; i < 3; ++i)
//            {
//                var view = UIView(frame:CGRectMake(fX, 0.0, 200.0, 200.0))
//                fX += 200.0
//                view.backgroundColor = UIColor.redColor()
//                scrollView.addSubview(view)
//            }
//            scrollView.contentSize = CGSizeMake(3 * 200.0, 200.0)
//            self.view.addSubview(scrollView)
        }else if(self.title == "UISearchBar"){
            var cgRect = CGRect(x: 10, y: 120, width: 300, height: 30);
            var search = UISearchBar(frame: cgRect);
            search.showsCancelButton = true;
            search.searchBarStyle = UISearchBarStyle.Minimal;
            self.view.addSubview(search);
        
        }else if(self.title == "UIPageControl"){
            var cgRect = CGRect(x: 60, y: 120, width: 200, height: 200);
            var pageControl = UIPageControl(frame: cgRect);
            pageControl.numberOfPages = 5;
            pageControl.currentPageIndicatorTintColor = UIColor.blackColor();
            pageControl.pageIndicatorTintColor = UIColor.redColor();
            self.view.addSubview(pageControl);
        }else if(self.title == "UIDatePicker"){
            
        }else if(self.title == "UIPickerView"){
        
        }else if(self.title == "UIProgressView"){
            var cgRect = CGRect(x: 10, y: 100, width: 300, height: 30)
            var progressView = UIProgressView(progressViewStyle:.Bar);
            progressView.frame = cgRect;
            progressView.setProgress(0.8, animated: true);
            self.view.addSubview(progressView);
        }else if(self.title == "UITextView"){
            var cgRect = CGRect(x: 60, y: 120, width: 300, height: 200);
            var textView = UITextView(frame: cgRect);
            textView.backgroundColor = UIColor.lightGrayColor();
            textView.editable = false;
            textView.font = UIFont.systemFontOfSize(38);
            textView.text = "Swift is an innovative new programming language for Cocoa and Cocoa Touch. Writing code is interactive and fun, the syntax is concise yet expressive, and apps run lightning-fast. Swift is ready for your next iOS and OS X project — or for addition into your current app — because Swift code works side-by-side with Objective-C."
            self.view.addSubview(textView)
        
        }else if(self.title == "UIToolbar"){
            var toolBar = UIToolbar(frame:CGRectMake(60.0, 120.0, 200.0, 30.0))
            var flexibleSpace = UIBarButtonItem(barButtonSystemItem:UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil);
            var barItemA = UIBarButtonItem(title: "A", style: .Plain, target: nil, action: nil);
            var barItemB = UIBarButtonItem(title: "B", style: .Plain, target: nil, action: nil);
            var barItemC = UIBarButtonItem(title: "C", style: .Plain, target: nil, action: nil);
            var barBtnItemD = UIBarButtonItem(title: "D", style:UIBarButtonItemStyle.Plain, target:nil, action:nil)
            toolBar.items = [flexibleSpace,barItemA,flexibleSpace,barItemB,flexibleSpace,barItemC,flexibleSpace,barBtnItemD];
            self.view.addSubview(toolBar);
            
        }else if(self.title == "UIActionSheet"){
        
        }else if(self.title == "UIActivityIndicatorView"){
        
        }else if(self.title == "UICollectionView"){
        
        }else{
        
        }
    }
    
    //按钮点击触发事件
    func buttonAction(sender:UIButton){
        //swift调用oc
        let mathSum = MathSum();
        let sum = mathSum.sum(11, number2: 22);
        let alter = UIAlertController(title: "Title", message: String(format: "Result=%i",sum), preferredStyle: UIAlertControllerStyle.Alert);
        alter.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil));
        self.presentViewController(alter, animated: true, completion: nil);
    }
}