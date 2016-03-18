//
//  ViewController.m
//  TipCalculator
//
//  Created by Sergio Martinez on 2016-03-18.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
    
    NSString *billAmount = self.billAmountTextField.text;
    float bill = [billAmount floatValue];
    
    NSString *percentageAmount = self.tipPercentageTextField.text;
    float percentage = [percentageAmount floatValue];
    
    float tipCalculated = bill * (percentage / 100);
    
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$%.2f", tipCalculated];
    
//    [self.view endEditing:YES];
    
    
}

@end
