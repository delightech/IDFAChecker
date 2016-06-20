//
//  ViewController.m
//  IDFAChecker
//
//  Created by Hisafumi Kikkawa on 2016/06/20.
//  Copyright © 2016年 shinjukujohnny. All rights reserved.
//

#import "ViewController.h"
#import <AdSupport/AdSupport.h>

@interface ViewController ()

@property (nonatomic) UITextField *txtField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *idfa;
    ASIdentifierManager* manager = [ASIdentifierManager sharedManager];
    if ([manager isAdvertisingTrackingEnabled]) {
        idfa = [manager advertisingIdentifier].UUIDString;
        NSLog(@"###IDFA###");
        NSLog(@"IDFA: %@", idfa);
        NSLog(@"##########");
    }
    
    self.txtField = [[UITextField alloc] initWithFrame:CGRectMake(20, 50, 280, 30)];
    [self.txtField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.txtField setText:idfa];
    [self.view addSubview:self.txtField];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
