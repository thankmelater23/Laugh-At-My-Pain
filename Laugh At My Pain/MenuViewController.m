//
//  MenuViewController.m
//  Laugh At My Pain
//
//  Created by Andre on 12/3/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import "MenuViewController.h"
#include "Resources.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSURL *file = [[NSBundle mainBundle]URLForResource:@"CounterPropertyList" withExtension:@"plist"];
        
        incrementedCounter = [[NSMutableDictionary alloc]initWithContentsOfURL:file];
        
        if (incrementedCounter == nil)
        {
            
        }
        
        nooo = [[incrementedCounter objectForKey:@"Nooo"] integerValue];
        
        alright = [[incrementedCounter objectForKey:@"Alright"] integerValue];
        
        goLilBitch = [[incrementedCounter objectForKey:@"Go Lil Bitch"] integerValue];
        
        uglyKids = [[incrementedCounter objectForKey:@"Ugly Ass Kids"] integerValue];
        
        longDick = [[incrementedCounter objectForKey:@"Long Dick"] integerValue];
        
        pineapples = [[incrementedCounter objectForKey:@"Pineapples"] integerValue];
        
        spongeBob = [[incrementedCounter objectForKey:@"SpongeBob"] integerValue];
        
        cousinAl = [[incrementedCounter objectForKey:@"Cousin Al"] integerValue];
        
        vid1 = [[incrementedCounter objectForKey:@"Vid 1"] integerValue];
        
        vid2 = [[incrementedCounter objectForKey:@"Vid 2"] integerValue];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self supportedInterfaceOrientations];
	// Do any additional setup after loading the view.
    /**************************************************************************************************************************/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

@end
