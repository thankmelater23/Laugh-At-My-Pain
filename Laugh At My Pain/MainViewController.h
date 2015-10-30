//
//  ViewController.h
//  Laugh At My Pain
//
//  Created by Andre on 11/26/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>
#import "Resources.h"

@interface MainViewController : UIViewController
{
    //AvPlayer
    AVAudioPlayer *avPlayer;
    //Sound ID's
    SystemSoundID sIDClick;
    
    //Video Vars
    NSURL *vidURL;
    MPMoviePlayerViewController *vid1PlayerController;
    NSURL *vidURL2;
    MPMoviePlayerViewController *vid1PlayerController2;
}


//Play Audio
- (IBAction)playClick;
- (IBAction)playNooo;
- (IBAction)playUglyKids;
- (IBAction)playSpongeBob;
- (IBAction)playAlright;
- (IBAction)playLongDick;
- (IBAction)playGoLilBitch;
- (IBAction)playPineApples;
- (IBAction)playCousinAl;


//Play Video
-(IBAction) playVideo1;
-(IBAction) playVideo2;


//Stat Keeper
- (IBAction)addToAlright;
- (IBAction)addToLongDick;
- (IBAction)addToNooo;
- (IBAction)addToGoLilBitch;
- (IBAction)addToUglyKids;
- (IBAction)addToPineApples;
- (IBAction)addToSpongeBob;
- (IBAction)addToCousinAl;
- (IBAction)addToVid1;
- (IBAction)addToVid2;

//Others
-(IBAction)gotoSettings;

@end