//
//  ViewTwoController.m
//  MyAssessment
//
//  Created by admin on 5/16/15.
//  Copyright (c) 2015 Deals Bender. All rights reserved.
//

#import "ViewTwoController.h"
#import "ViewOneController.h"
#import "ViewThreeController.h"

@interface ViewTwoController ()

- (IBAction)button1Pressed:(UIButton *)sender;

- (IBAction)button2Pressed:(UIButton *)sender;

- (IBAction)button3Pressed:(UIButton *)sender;

- (IBAction)button4Pressed:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *infoLabel;


@end

@implementation ViewTwoController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    if (self.backgroundColor != nil){
        [self.view setBackgroundColor:self.backgroundColor];
    }
    
    if (self.buffer != nil){
        self.infoLabel.text = self.buffer;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)button1Pressed:(UIButton *)sender {
    
    UIViewController *previousVC = [self previousViewController];
    
    if ([previousVC isKindOfClass:[ViewOneController class]]){
        
        ViewOneController *viewOne = (ViewOneController *)previousVC;
        viewOne.buffer = @"button pressed is ONE";
        
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)button2Pressed:(UIButton *)sender {
    
    UIViewController *previousVC = [self previousViewController];
    
    if ([previousVC isKindOfClass:[ViewOneController class]]){
        
        ViewOneController *viewOne = (ViewOneController *)previousVC;
        viewOne.buffer = @"button pressed is TWO";
        
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)button3Pressed:(UIButton *)sender {
    
    UIViewController *previousVC = [self previousViewController];
    
    if ([previousVC isKindOfClass:[ViewOneController class]]){
        
        ViewOneController *viewOne = (ViewOneController *)previousVC;
        viewOne.buffer = @"button pressed is THREE";
        
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)button4Pressed:(UIButton *)sender {
    
    ViewThreeController *viewThree = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewThree"];

    [self.navigationController pushViewController:viewThree animated:YES];
}

- (UIViewController *)previousViewController
{
    NSInteger numberOfViewControllers = self.navigationController.viewControllers.count;
    
    if (numberOfViewControllers < 2)
        return nil;
    else
        return [self.navigationController.viewControllers objectAtIndex:numberOfViewControllers - 2];
}








@end
