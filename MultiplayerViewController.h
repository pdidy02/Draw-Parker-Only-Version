//
//  MultiplayerViewController.h
//  Draw
//
//  Created by Parker Hardy on 6/13/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//

#import <GameKit/GameKit.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol MultiplayerViewControllerDelegate
- (void)matchStarted;
- (void)matchEnded;
- (void)match:(GKMatch *)match didReceiveData:(NSData *)data
   fromPlayer:(NSString *)playerID;
@end



@interface MultiplayerViewController : UIViewController <GKMatchmakerViewControllerDelegate, GKMatchDelegate>
{
    
    BOOL matchStarted;
    //id <MatchFinderDelegate> delegate;
    //GKMatch *Match;
}
//@property (retain) UIViewController *presentingViewController;
@property (retain) GKMatch *Match;
@property (assign) id <MultiplayerViewControllerDelegate> delegate;


@end
