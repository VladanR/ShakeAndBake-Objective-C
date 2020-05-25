//
//  ViewController.m
//  ShakeAndBake
//
//  Created by Vladan Randjelovic on 23/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    if (event.subtype == UIEventSubtypeMotionShake) {
        
        self.infoLabel.text = @"Shake, shake, shake, pour some milk! :)";
        
    }
    
}

@end
