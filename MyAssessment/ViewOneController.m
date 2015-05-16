//
//  ViewController.m
//  MyAssessment
//
//  Created by admin on 5/16/15.
//  Copyright (c) 2015 Deals Bender. All rights reserved.
//

#import "ViewOneController.h"
#import "ViewTwoController.h"

@interface ViewOneController ()

- (IBAction)button1Pressed:(UIButton *)sender;

- (IBAction)button2Pressed:(UIButton *)sender;

- (IBAction)button3Pressed:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *mainLabel;


@end

@implementation ViewOneController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated {
    
    if (_buffer != nil)
        self.mainLabel.text = _buffer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1Pressed:(UIButton *)sender {
    
    // whenever we click a button, reset buffer to NONE
    _buffer = @"None";
    
    ViewTwoController *viewTwo = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewTwo"];
    viewTwo.buffer = @"button pressed is 1";
    viewTwo.backgroundColor = [UIColor blueColor];
    [self.navigationController pushViewController:viewTwo animated:YES];
    
}

- (IBAction)button2Pressed:(UIButton *)sender {
    
    // whenever we click a button, reset buffer to NONE
    _buffer = @"None";
    
    ViewTwoController *viewTwo = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewTwo"];
    viewTwo.buffer = @"button pressed is 2";
    viewTwo.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:viewTwo animated:YES];
}

- (IBAction)button3Pressed:(UIButton *)sender {
    
    // whenever we click a button, reset buffer to NONE
    _buffer = @"None";
    
    ViewTwoController *viewTwo = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewTwo"];
    viewTwo.buffer = @"button pressed is 3";
    viewTwo.backgroundColor = [UIColor greenColor];
    [self.navigationController pushViewController:viewTwo animated:YES];
}
@end
