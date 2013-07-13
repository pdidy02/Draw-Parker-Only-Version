//
//  GCHelper.h
//  Draw
//
//  Created by Parker Hardy on 3/19/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>
#import "AppDelegate.h"
@protocol GCHelperDelegate
- (void)matchStarted;
- (void)matchEnded;
- (void)match:(GKMatch *)match didReceiveData:(NSData *)data
   fromPlayer:(NSString *)playerID;
@end




@interface GCHelper : NSObject <GKMatchmakerViewControllerDelegate, GKMatchDelegate> {
    UIViewController *presentingViewController;
    GKMatch *match;
    BOOL matchStarted;
    id <GCHelperDelegate> delegate;
    
}
@property (retain) UIViewController *presentingViewController;
@property (retain) GKMatch *match;
@property (assign) id <GCHelperDelegate> delegate;
+ (GCHelper *)sharedInstance;

- (void)findMatchWithMinPlayers:(int)minPlayers maxPlayers:(int)maxPlayers
                 viewController:(UIViewController *)viewController delegate:(id<GCHelperDelegate>)theDelegate;

@property(readwrite,getter = isGamecenterAuthenticationComplete) BOOL
gameCenterAuthenticationComplete;


@end
