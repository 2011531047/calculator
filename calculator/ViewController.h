//
//  ViewController.h
//  calculator
//
//  Created by 野上　はづき on 13/11/21.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    int nownumber, beforenumber;
}

- (IBAction)zero:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;

- (IBAction)divisionButton:(id)sender;
- (IBAction)multiplicationButton:(id)sender;
- (IBAction)subtractionButton:(id)sender;
- (IBAction)additionButton:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)AC:(id)sender;
@property enum {add, sub, mul, div} state;

@property (weak, nonatomic) IBOutlet UILabel *result;


@end
