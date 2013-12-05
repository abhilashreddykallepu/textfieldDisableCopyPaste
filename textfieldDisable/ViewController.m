//
//  ViewController.m
//  textfieldDisable
//
//  Created by Hadi Hatinoglu on 04/12/13.
//  Copyright (c) 2013 Baraansoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtfld;

@end

@implementation ViewController

- (void)viewDidLoad
{

    UIPasteboard *paste=[UIPasteboard generalPasteboard];
    NSArray *arr=[paste pasteboardTypes];
    UIMenuController *men=[[UIMenuController alloc]init];

    
    _txtfld.multipleTouchEnabled=NO;
    [_txtfld addTarget:nil action:nil forControlEvents:UIControlStateSelected];
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapped)];
    [_txtfld addGestureRecognizer:tap];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)tapped{
    
    [_txtfld becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
