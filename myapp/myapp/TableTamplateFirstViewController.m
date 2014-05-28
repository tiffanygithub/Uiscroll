//
//  TableTamplateFirstViewController.m
//  myapp
//
//  Created by tiffany  on 2014/5/28.
//  Copyright (c) 2014年 appscomb. All rights reserved.
//

#import "TableTamplateFirstViewController.h"

@interface TableTamplateFirstViewController ()

@end

@implementation TableTamplateFirstViewController
@synthesize scroll;
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scroll=[[UIScrollView alloc]initWithFrame:self.view.frame];
    self.scroll.contentSize=CGSizeMake(320*100, self.view.frame.size.height);
    self.scroll.backgroundColor=[UIColor whiteColor];
    self.scroll.pagingEnabled=YES;
    [self.view addSubview:self.scroll];
    
    for(int i=0;i<100;i++)
    {
        UIWebView *webview=[self CreatWebView:CGRectMake(320*i, 0,320,self.view.frame.size.height) Weburl:@"http://www.apple.com"];
 
        [self.scroll addSubview:webview];
    }
    /*UIWebView *webview2=[self CreatWebView:CGRectMake(320, 0,320,self.view.frame.size.height) Weburl:@"http://www.google.com.tw"];
    
    [self.scroll addSubview:webview2];
    
    UIWebView *webview3=[self CreatWebView:CGRectMake(640, 0,320,self.view.frame.size.height) Weburl:@"http://www.yahoo.com.tw"];
    
    [self.scroll addSubview:webview3];*/
	// Do any additional setup after loading the view, typically from a nib.
}
-(UIWebView*)CreatWebView:(CGRect)Postion Weburl:(NSString*)Url
{
  
    UIWebView *webview=[[UIWebView alloc]initWithFrame:Postion];
    [webview setBackgroundColor:[UIColor redColor]];

    NSURL *nsurl2=[NSURL URLWithString:Url];
    NSURLRequest *nsrequest2=[NSURLRequest requestWithURL:nsurl2];
    [webview loadRequest:nsrequest2];
    [webview setScalesPageToFit:NO];
    webview.scalesPageToFit=YES;
    webview.multipleTouchEnabled=YES;
    
    [[webview layer] setCornerRadius:10];
    [webview setClipsToBounds:YES];
    [[webview layer] setBorderColor:
    [[UIColor blackColor] CGColor]];
    [[webview layer] setBorderWidth:2.75];
    return webview;

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
