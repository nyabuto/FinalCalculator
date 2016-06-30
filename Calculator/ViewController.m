//
//  ViewController.m
//  Calculator
//
//  Created by anto on 29/06/2016.
//  Copyright © 2016 anto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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



- (IBAction)btnNumber1:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@1",display.text];
   }
- (IBAction)btnNumber2:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@2",display.text];
}
- (IBAction)btnNumber3:(UIButton *)sender{
    display.text=[NSString stringWithFormat:@"%@3",display.text];
}
- (IBAction)btnNumber4:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@4",display.text];
}
- (IBAction)btnNumber5:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
}
- (IBAction)btnNumber6:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@6",display.text];
}
- (IBAction)btnNumber7:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@7",display.text];
}
- (IBAction)btnNumber8:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@8",display.text];
}
- (IBAction)btnNumber9:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@9",display.text];
}
- (IBAction)btnNumber0:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction)btnAddition:(UIButton *)sender {
    operation = Plus;
    storage = display.text;
    display.text=@"";
}

- (IBAction)btnSubtract:(UIButton *)sender {
    operation=Minus;
    storage= display.text;
    display.text= @"";
    
}

- (IBAction)btnDivide:(UIButton *)sender {
    operation=  Divide;
    storage= display.text;
    display.text= @"";
}

- (IBAction)btnMultiply:(UIButton *)sender {
    operation=Multiply;
    storage= display.text;
    display.text= @"";
}

- (IBAction)btnEqualsResults:(UIButton *)sender {
    NSString *val = display.text;
    switch(operation) {
        case Plus :
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
            break;
        case Minus:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
            break;
        case Divide:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
            break;
        case Multiply:
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage longLongValue]];
            break;
}
}

- (IBAction)btnClear:(UIButton *)sender {
    display.text = @"";
}


@end
