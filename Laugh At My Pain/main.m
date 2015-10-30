//
//  main.m
//  Laugh At My Pain
//
//  Created by Andre on 11/26/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

#import <AudioToolbox/AudioToolbox.h>


int main(int argc, char *argv[])
{
    SystemSoundID *sIDYouGonnaLearn;
    @autoreleasepool {
        //Loads Alrightg Sound
        CFBundleRef youGonnaLearnMainBundle = CFBundleGetMainBundle();
        CFURLRef youGonnaLearnsoundFileURLRef;
        youGonnaLearnsoundFileURLRef = CFBundleCopyResourceURL(youGonnaLearnMainBundle, (CFStringRef) @"You Gonna Learn Today", CFSTR ("wav"), NULL);
        AudioServicesCreateSystemSoundID(youGonnaLearnsoundFileURLRef, &sIDYouGonnaLearn);
        
        //Play Opening Sound(Alright Alright Alright)
        AudioServicesPlaySystemSound(sIDYouGonnaLearn);

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
