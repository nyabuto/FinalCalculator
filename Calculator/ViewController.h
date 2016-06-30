//
//  ViewController.h
//  Calculator
//
//  Created by anto on 29/06/2016.
//  Copyright © 2016 anto. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{Plus, Minus,Multiply, Divide} CalcOperation;

@interface ViewController : UIViewController{
    IBOutlet UITextField *display;
    NSString *storage;
    CalcOperation operation;
    
 }


// for the numbers buttons to be pressed

- (IBAction)btnNumber1:(UIButton *)sender;
- (IBAction)btnNumber2:(UIButton *)sender;
- (IBAction)btnNumber3:(UIButton *)sender;
- (IBAction)btnNumber4:(UIButton *)sender;
- (IBAction)btnNumber5:(UIButton *)sender;
- (IBAction)btnNumber6:(UIButton *)sender;
- (IBAction)btnNumber7:(UIButton *)sender;
- (IBAction)btnNumber8:(UIButton *)sender;
- (IBAction)btnNumber9:(UIButton *)sender;
- (IBAction)btnNumber0:(UIButton *)sender;
- (IBAction)btnAddition:(UIButton *)sender;
- (IBAction)btnSubtract:(UIButton *)sender;
- (IBAction)btnDivide:(UIButton *)sender;
- (IBAction)btnMultiply:(UIButton *)sender;
- (IBAction)btnEqualsResults:(UIButton *)sender;


@end

