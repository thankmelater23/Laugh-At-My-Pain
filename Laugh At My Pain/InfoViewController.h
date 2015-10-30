//
//  InfoViewController.h
//  Laugh At My Pain
//
//  Created by Andre on 12/1/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import "Resources.h"

@interface InfoViewController : UIViewController
{
    //Sound ID's
    SystemSoundID *sIDClick;
    
    //Labels for Stats
    IBOutlet UILabel *lbsIDAlright;
    IBOutlet UILabel *lbsIDLongDick;
    IBOutlet UILabel *lbsIDNooo;
    IBOutlet UILabel *lbsIDGoLilBitch;
    IBOutlet UILabel *lbsIDUglyKids;
    IBOutlet UILabel *lbsIDPineApples;
    IBOutlet UILabel *lbsIDSpongeBob;
    IBOutlet UILabel *lbsIDCousinAl;
    IBOutlet UILabel *lbsIDVid1;
    IBOutlet UILabel *lbsIDVid2;
    
}

@property(nonatomic, retain) NSMutableArray *incrementedCounter;

- (void)click;
-(IBAction)infoAlert;
-(IBAction)gotoMainView;

//Label Incrimenting
-(void)loadLabelIncrementing;

-(void)AlrightIncrementer;
-(void)LongDickIncrementer;
-(void)NoooIncrementer;
-(void)GoLilBitchIncrementer;
-(void)UglyKidsIncrementer;
-(void)PineApplesIncrementer;
-(void)SpongeBobIncrementer;
-(void)CousinAlIncrementer;
-(void)Vid1Incrementer;
-(void)Vid2Incrementer;
-(void)saveStats;
@end
