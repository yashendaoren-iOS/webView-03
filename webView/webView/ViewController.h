//
//  ViewController.h
//  webView
//
//  Created by Silver on 15/1/16.
//  Copyright (c) 2015年 Silver. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>


@property (weak, nonatomic) IBOutlet UIWebView *web;
@property (weak, nonatomic) IBOutlet UITextField *address;
- (IBAction)goBack:(UIButton *)sender;
- (IBAction)flash:(UIButton *)sender;

- (IBAction)forward:(UIButton *)sender;


@end

