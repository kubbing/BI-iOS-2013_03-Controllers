//
//  ViewController.m
//  Controllers
//
//  Created by Dominik Vesely on 10/14/13.
//  Copyright (c) 2013 Dominik Veselý. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Ahoj";
    self.view.backgroundColor = [UIColor lightGrayColor];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMeAction:(id)sender {
    NSLog(@"show me");
    
    //Init With Default nib / code
  //  SecondViewController* vc = [[SecondViewController alloc] init];
    
    // init with specific nib
     // SecondViewController* vc = [[SecondViewController alloc] initWithNibName:@"" bundle:nil];
    
    //init from storyboard
    SecondViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    
    vc.navigationItem.title = @"Welcome";
    
    UINavigationController* navVC = [[UINavigationController alloc] initWithRootViewController:vc];
    
    navVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self presentViewController:navVC animated:YES completion:nil];
    
}

- (IBAction)pushThirdAction:(id)sender {
    ThirdViewController* third = [self.storyboard instantiateViewControllerWithIdentifier:@"third"];
    
    [self.navigationController pushViewController:third animated:YES];
}

- (IBAction)addAction:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Adding is not supported!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
}
@end
