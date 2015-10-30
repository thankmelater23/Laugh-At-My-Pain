//
//  InfoViewController.m
//  Laugh At My Pain
//
//  Created by Andre on 12/1/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import "InfoViewController.h"



@implementation InfoViewController

//System Methods
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //Loads Click Sound
    CFBundleRef ClickMainBundle = CFBundleGetMainBundle();
    CFURLRef ClicksoundFileURLRef;
    ClicksoundFileURLRef = CFBundleCopyResourceURL(ClickMainBundle, (CFStringRef) @"click", CFSTR ("mp3"), NULL);
    AudioServicesCreateSystemSoundID(ClicksoundFileURLRef, sIDClick);
    
    [self saveStats];
    [self loadLabelIncrementing];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

-(IBAction)infoAlert
{
    AudioServicesPlaySystemSound(sIDClick);
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"INFO" message:@"Laugh At My Pain is a Production of: HnG Studios\nContact: HnGStudios@gmail.com" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}


//Label Incrimenting
-(void)loadLabelIncrementing
{
    
    [self AlrightIncrementer];
    [self LongDickIncrementer];
    [self NoooIncrementer];
    [self GoLilBitchIncrementer];
    [self UglyKidsIncrementer];
    [self PineApplesIncrementer]; 
    [self SpongeBobIncrementer];
    [self CousinAlIncrementer];
    [self Vid1Incrementer];
    [self Vid2Incrementer];
}


-(void)AlrightIncrementer
{
    lbsIDAlright.text = [NSString stringWithFormat:@"%i", alright];
}

-(void)LongDickIncrementer
{
    lbsIDLongDick.text = [NSString stringWithFormat:@"%i", longDick];
}

-(void)NoooIncrementer
{
    lbsIDNooo.text = [NSString stringWithFormat:@"%@", [incrementedCounter valueForKey:@"Nooo"]];
}

-(void)GoLilBitchIncrementer
{
    lbsIDGoLilBitch.text = [NSString stringWithFormat:@"%i", goLilBitch];
}

-(void)UglyKidsIncrementer
{
    lbsIDUglyKids.text = [NSString stringWithFormat:@"%i", uglyKids];
}

-(void)PineApplesIncrementer
{
    lbsIDPineApples.text = [NSString stringWithFormat:@"%i", pineapples];
}

-(void)SpongeBobIncrementer
{
    lbsIDSpongeBob.text = [NSString stringWithFormat:@"%i", spongeBob];
}

-(void)CousinAlIncrementer
{
    lbsIDCousinAl.text = [NSString stringWithFormat:@"%i", cousinAl];
}

-(void)Vid1Incrementer
{
    lbsIDVid1.text = [NSString stringWithFormat:@"%i", vid1];
}

-(void)Vid2Incrementer
{
    lbsIDVid2.text = [NSString stringWithFormat:@"%i", vid2];
}


//Others
-(IBAction)gotoMainView
{
    [self click];
    [self dismissModalViewControllerAnimated:YES];
    [self saveStats];
}


- (void)click
{
    AudioServicesPlaySystemSound(sIDClick);
    
}

-(void)saveStats
{
    [incrementedCounter setValue:@(nooo) forKey:@"Nooo"];
}

-(void)loadStats
{
    
    
}
@end
