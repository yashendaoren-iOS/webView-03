//
//  ViewController.m
//  webView
//
//  Created by Silver on 15/1/16.
//  Copyright (c) 2015年 Silver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *urlString = @"http://www.baidu.com";
    [self.address setText:urlString];
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    self.address.clearsOnInsertion = YES;
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    UIActivityIndicatorView *wait = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    
    wait.frame = CGRectMake(135, 200, 50, 50);
    
    [self.view addSubview:wait];
    
    wait.tag = 100;
    
    [self.view addSubview:wait];
    
    
    [wait startAnimating];
    
    
    [self.web loadRequest:request];
    
    [self.web setDelegate:self];
    
}

- (IBAction)goBack:(UIButton *)sender {
    
    [self.web goBack];
}

- (IBAction)flash:(UIButton *)sender {
    
    NSString *urlString = self.address.text;
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.web loadRequest:request];
}

- (IBAction)forward:(UIButton *)sender {
    
    [self.web goForward];
}



- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    UIActivityIndicatorView *view = (UIActivityIndicatorView *)[self.view viewWithTag:100];
    
    [view stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"error occur %@", error);
}

@end
