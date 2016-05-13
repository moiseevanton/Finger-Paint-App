//
//  ViewController.m
//  Finger Paint App
//
//  Created by Anton Moiseev on 2016-05-13.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "ViewController.h"
#import "PaintView.h"

@interface ViewController ()

@property UIColor *currentColor;

@property (weak, nonatomic) IBOutlet UISegmentedControl *colorControl;

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
- (IBAction)changeColor:(UISegmentedControl *)sender {
    
    if (sender.selectedSegmentIndex == 0) {
        self.currentColor = [UIColor greenColor];
    } else if (sender.selectedSegmentIndex == 1) {
        self.currentColor = [UIColor redColor];
    } else if (sender.selectedSegmentIndex == 2) {
        self.currentColor = [UIColor blueColor];
    }
}

@end
