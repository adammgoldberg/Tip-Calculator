//
//  ViewController.m
//  Tip Calculator App
//
//  Created by Adam Goldberg on 2015-10-09.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, strong) UITextField *billAmountTextField;

@property (nonatomic, strong) UITextField *tipPercentageTextField;

@property (nonatomic, strong) UIButton *tipButton;

@property (nonatomic, strong) UILabel *tipAmountLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.billAmountTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 300, 50)];
    self.billAmountTextField.backgroundColor = [UIColor whiteColor];
    self.billAmountTextField.placeholder = @"Enter Bill Amount";
    
    self.billAmountTextField.delegate = self;
    
    
    
    self.tipPercentageTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 300, 50)];
    self.tipPercentageTextField.backgroundColor = [UIColor whiteColor];
    self.tipPercentageTextField.placeholder = @"Enter Tip Percentage Number";
    
    self.tipPercentageTextField.delegate = self;
    
    
    
    
    
    
    self.tipButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 200, 50)];
    self.tipButton.backgroundColor = [UIColor orangeColor];
    [self.tipButton setTitle:@"Calculate Tip" forState:UIControlStateNormal];
    
    
    self.tipAmountLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 500, 200, 50)];
    self.tipAmountLabel.backgroundColor = [UIColor whiteColor];
    
    
    
    
    
    
    [self.view addSubview:self.tipButton];
    [self.view addSubview:self.billAmountTextField];
    [self.view addSubview:self.tipPercentageTextField];
    [self.view addSubview:self.tipAmountLabel];
    
    
    
    [self.tipButton addTarget:self action:@selector(calculate) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)billAmount
{
    [billAmount resignFirstResponder];
    return YES;
}


-(void)calculate
{
    float result = ([self.billAmountTextField.text floatValue] * ([self.tipPercentageTextField.text floatValue] / 100) );
    self.tipAmountLabel.text = [NSString stringWithFormat:@"%f", result];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
