//
//  ThirdViewController.m
//  Controllers
//
//  Created by Dominik Vesely on 10/14/13.
//  Copyright (c) 2013 Dominik Veselý. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // :)
    self.navigationItem.titleView = [[UISlider alloc] initWithFrame:CGRectMake(0, 0, 40, 30)];
    
    UIBarButtonItem* btn = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleDone target:self action:@selector(btnAction:)];
    
    UIBarButtonItem* btn2 = [[UIBarButtonItem alloc] initWithTitle:@"Clear" style:UIBarButtonItemStyleDone target:self action:@selector(btnAction:)];
    
    self.navigationItem.rightBarButtonItems = @[btn,btn2];
    
	// Do any additional setup after loading the view.
}

- (void) btnAction:(id) sender {
    [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Editing is not supported!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
