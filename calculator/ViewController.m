//
//  ViewController.m
//  calculator
//
//  Created by 野上　はづき on 13/11/21.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)zero:(id)sender {
    nownumber = nownumber *10;
    nownumber = nownumber +1;
    _result.text = [NSString
        stringWithFormat:@"%d",nownumber];
}

- (IBAction)one:(id)sender {
    _result.text = @"1";
}

- (IBAction)two:(id)sender {
    nownumber = nownumber *10;
    nownumber = nownumber +2;
    _result.text = [NSString
        stringWithFormat:@"%d",nownumber];
}

- (IBAction)three:(id)sender {
    nownumber = nownumber *10;
    nownumber = nownumber +3;
    _result.text = [NSString
        stringWithFormat:@"%d",nownumber];
}

- (IBAction)four:(id)sender {
    nownumber = nownumber *10;
    nownumber = nownumber +4;
    _result.text = [NSString
        stringWithFormat:@"%d",nownumber];
}

- (IBAction)five:(id)sender {
    nownumber = nownumber *10;
    nownumber = nownumber +5;
    _result.text = [NSString
        stringWithFormat:@"%d",nownumber];
}

- (IBAction)six:(id)sender {
    nownumber = nownumber *10;
    nownumber = nownumber +6;
    _result.text = [NSString
        stringWithFormat:@"%d",nownumber];
}

- (IBAction)seven:(id)sender {
    nownumber = nownumber *10;
    nownumber = nownumber +7;
    _result.text = [NSString
        stringWithFormat:@"%d",nownumber];
}

- (IBAction)eight:(id)sender {
    nownumber = nownumber *10;
    nownumber = nownumber +8;
    _result.text = [NSString
        stringWithFormat:@"%d",nownumber];
}

- (IBAction)nine:(id)sender {
    nownumber = nownumber *10;
    nownumber = nownumber +9;
    _result.text = [NSString
        stringWithFormat:@"%d",nownumber];
}

- (IBAction)divisionButton:(id)sender {
    beforenumber = nownumber;
    nownumber = 0;
    [self setState:div];
    _result.text = [NSString stringWithFormat:@"%d", beforenumber];    
}

- (IBAction)multiplicationButton:(id)sender {
    beforenumber = nownumber;
    nownumber = 0;
    [self setState:mul];
    _result.text = [NSString stringWithFormat:@"%d", beforenumber];
}

- (IBAction)subtractionButton:(id)sender {
    beforenumber = nownumber;
    nownumber = 0;
    [self setState:sub];
    _result.text = [NSString stringWithFormat:@"%d", beforenumber];
}

- (IBAction)additionButton:(id)sender {
    nownumber = beforenumber + nownumber;
    beforenumber = nownumber;
    nownumber = 0;
    [self setState:add];
    _result.text = [NSString stringWithFormat:@"%d", beforenumber];
}

- (IBAction)equal:(id)sender {
    switch (self.state) {
        case div:
            nownumber = beforenumber / nownumber;
            _result.text = [NSString stringWithFormat:@"%d", nownumber];
            beforenumber = nownumber;
            nownumber = 0;
            break;
        case mul:
            nownumber = beforenumber * nownumber;
            _result.text = [NSString stringWithFormat:@"%d", nownumber];
            nownumber = 0;
            break;
        case sub:
            nownumber = beforenumber - nownumber;
            _result.text = [NSString stringWithFormat:@"%d", nownumber];
            nownumber = 0;
            break;
        case add:
            nownumber = beforenumber + nownumber;
            _result.text = [NSString stringWithFormat:@"%d", nownumber];
            beforenumber = nownumber;
            nownumber = 0;
            break;
    }
}

- (IBAction)AC:(id)sender {
    nownumber = 0;
    beforenumber = 0;
    _result.text = [NSString stringWithFormat:@"%d", nownumber];
}


@end
