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
    
    timeValue = 10;
    scoreValue = 0;
    
    gameMode = 0;
    imageIndex = 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeValue];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreValue];
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    if (event.subtype == UIEventSubtypeMotionShake) {
        if (gameMode == 1) {
            scoreValue +=1;
            self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreValue];
            
            imageIndex += 1;
            if (imageIndex == 12) {
                imageIndex = 1;
            }
            self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Face%i",imageIndex]];
        }
        
        
    }
    
}

- (IBAction)startGame:(id)sender {

    if (timeValue == 10) {
        gameTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateCounter) userInfo:nil repeats:YES];
        gameMode = 1;
    }
    
}

-(void)updateCounter {
    timeValue -=1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeValue];
    
    if (timeValue == 0) {
        [gameTimer invalidate];
        gameMode = 0;
    }
}

@end
