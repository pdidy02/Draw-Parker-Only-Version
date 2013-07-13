//
//  AppDelegate.h
//  Draw
//
//  Created by Parker Hardy on 3/6/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GameKit/GameKit.h>
#import <AVFoundation/AVAudioPlayer.h>
BOOL isGameCenterAvailable();
@class MainViewController;
AVAudioPlayer *playSoundtrack;


@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
    UIViewController *MainViewController;
    


}
@property (nonatomic, retain) UIViewController *MainViewController;
@property (nonatomic, retain) IBOutlet UIWindow * window;
@property (nonatomic, retain) IBOutlet UIViewController * mainViewController;
@property (retain, readwrite) NSString * currentPlayerID;
@property(readwrite,getter = isGamecenterAuthenticationComplete) BOOL
  gameCenterAuthenticationComplete;
@property (nonatomic, retain) UIViewController *viewController;


@end