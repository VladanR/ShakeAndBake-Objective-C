//
//  ViewController.h
//  ShakeAndBake
//
//  Created by Vladan Randjelovic on 23/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *gameTimer;
    
    int timeValue;
    int scoreValue;
    int gameMode;
    int imageIndex;
    
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *startButton;


- (IBAction)startGame:(id)sender;


@end

