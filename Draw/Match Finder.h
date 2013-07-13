//
//  Match Finder.h
//  Draw
//
//  Created by Parker Hardy on 4/1/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//


#import <GameKit/GameKit.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "gameController.h"
//#import "AccelerometerViewController.h"
@protocol MatchFinderDelegate
- (void)matchStarted;
- (void)matchEnded;
- (void)match:(GKMatch *)match didReceiveData:(NSData *)data
   fromPlayer:(NSString *)playerID;
@end



@interface Match_Finder : UIViewController <GKMatchmakerViewControllerDelegate, GKMatchDelegate>
{

BOOL matchStarted;
//id <MatchFinderDelegate> delegate;
    //GKMatch *Match;
}
//@property (retain) UIViewController *presentingViewController;
@property (retain) GKMatch *Match;
@property (assign) id <MatchFinderDelegate> delegate;
@property (nonatomic, retain)IBOutlet UIImageView *background;
@property (nonatomic, retain)IBOutlet UIImageView *localAvatar;
@property (retain) NSMutableDictionary *playersDict;
@property (nonatomic, retain)IBOutlet UILabel *matchedPlayer;
@property (nonatomic, retain)IBOutlet UIImageView *enemyAvatar;
@end
