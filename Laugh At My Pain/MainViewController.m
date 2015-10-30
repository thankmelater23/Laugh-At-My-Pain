//
//  ViewController.m
//  Laugh At My Pain
//
//  Created by Andre on 11/26/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import "MainViewController.h"
#import "Resources.h"
#import "InfoViewController.h"

@interface MainViewController ()



@end

@implementation MainViewController

//System Methods
- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    /****************************************************************************************************************************************/
    //Load Audio Sounds
    //Loads Click Sound
    CFBundleRef ClickMainBundle = CFBundleGetMainBundle();
    CFURLRef ClicksoundFileURLRef;
    ClicksoundFileURLRef = CFBundleCopyResourceURL(ClickMainBundle, (CFStringRef) @"click", CFSTR ("mp3"), NULL);
    AudioServicesCreateSystemSoundID(ClicksoundFileURLRef, sIDClick);
    
    
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Play Audio
- (IBAction)playClick
{
    AudioServicesPlaySystemSound(sIDClick);
    
}

- (IBAction)playNooo
{
    [avPlayer stop];
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"Nooo" ofType:@"wav"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    NSError *error;
    
    avPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error: &error];
    [avPlayer play];

}

- (IBAction)playUglyKids
{
    [avPlayer stop];
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"Ugly_Ass_Kids" ofType:@"wav"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    NSError *error;
    
    avPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error: &error];
    [avPlayer play];
}

- (IBAction)playAlright
{
    [avPlayer stop];
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"Alright" ofType:@"wav"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    NSError *error;
    
    avPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error: &error];
    [avPlayer play];
}

- (IBAction)playLongDick
{
    [avPlayer stop];
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"Long_Dick" ofType:@"wav"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    NSError *error;
    
    avPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error: &error];
    [avPlayer play];
}

- (IBAction)playGoLilBitch
{
    [avPlayer stop];
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"Lil_Bitch" ofType:@"wav"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    NSError *error;
    
    avPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error: &error];
    [avPlayer play];
}

- (IBAction)playPineApples
{
    [avPlayer stop];
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"PineApples" ofType:@"wav"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    NSError *error;
    
    avPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error: &error];
    [avPlayer play];
}

- (IBAction)playCousinAl
{
    [avPlayer stop];
    NSURL *vid1URL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cousin_Al" ofType:@"wav"]];
    MPMoviePlayerViewController *vid1PlayerController = [[MPMoviePlayerViewController alloc]
                                                         initWithContentURL:vid1URL];
    [self presentMoviePlayerViewControllerAnimated:vid1PlayerController];
    
    vid1PlayerController.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    
    [vid1PlayerController.moviePlayer play];
    
    vid1PlayerController = nil;
}

- (IBAction)playSpongeBob
{
    [avPlayer stop];
    NSURL *vid1URL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Sponge_Bob" ofType:@"wav"]];
    MPMoviePlayerViewController *vid1PlayerController = [[MPMoviePlayerViewController alloc]initWithContentURL:vid1URL];
    [self presentMoviePlayerViewControllerAnimated:vid1PlayerController];
    
    vid1PlayerController.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    
    [vid1PlayerController.moviePlayer play];
    
    vid1PlayerController = nil;
}

//Play Video
-(IBAction)playVideo1
{
    [avPlayer stop];
    vidURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Nooo" ofType:@"wav"]];
    vid1PlayerController = [[MPMoviePlayerViewController alloc]initWithContentURL:vidURL];
    [self presentMoviePlayerViewControllerAnimated:vid1PlayerController];
    
    vid1PlayerController.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    
    [vid1PlayerController.moviePlayer play];
    
    vid1PlayerController = nil;
}

-(IBAction)playVideo2
{
    [avPlayer stop];
    vidURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Nooo" ofType:@"wav"]];
    vid1PlayerController2 = [[MPMoviePlayerViewController alloc]initWithContentURL:vidURL2];
    [self presentMoviePlayerViewControllerAnimated:vid1PlayerController2];
    
    vid1PlayerController2.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    
    [vid1PlayerController2.moviePlayer play];
    
    vid1PlayerController2 = nil;
}


//Add Stats
- (IBAction)addToAlright
{
    extern int alright;
    ++alright;
}

-(void)addToLongDick
{
    extern int longDick;
    ++longDick;
}

- (IBAction)addToNooo
{
    extern int nooo;
    ++nooo;
}

- (IBAction)addToGoLilBitch
{
    extern int goLilBitch;
    ++goLilBitch;
}

- (IBAction)addToUglyKids
{
    extern int uglyKids;
    ++uglyKids;
}

- (IBAction)addToPineApples
{
    extern int pineapples;
    ++pineapples;
}

- (IBAction)addToSpongeBob
{
    extern int spongeBob;
    ++spongeBob;
}

- (IBAction)addToCousinAl
{
    extern int cousinAl;
    ++cousinAl;
}

- (IBAction)addToVid1
{
    extern int vid1;
    ++vid1;
}

- (IBAction)addToVid2
{
    extern int vid2;
    ++vid2;
}


//Others
-(IBAction)gotoSettings
{
    UIStoryboard *settingsStoryBoard = [UIStoryboard storyboardWithName:@"iPhoneInfoStoryBoard" bundle:nil];
    UIViewController *initialSettingsVC = [settingsStoryBoard instantiateInitialViewController];
    initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:initialSettingsVC animated:YES];
}


@end
