//
//  ViewController.m
//  Draw
//
//  Created by Parker Hardy on 3/6/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import <AVFoundation/AVAudioPlayer.h>



@implementation ViewController
@synthesize charecter;
- (void)viewDidLoad
{
    NSUserDefaults *charecter1 =[NSUserDefaults standardUserDefaults];
    NSString *choiced=[charecter1 objectForKey:@"choice"];
    UIImage *image=[UIImage imageNamed:choiced];
    
    charecter.image=image;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [playSoundtrack play];
    
    [GKMatchmaker sharedMatchmaker].inviteHandler = ^(GKInvite *acceptedInvite, NSArray *playersToInvite) {
    // Insert application-specific code here to clean up any games in progress.
    if (acceptedInvite)
    {
        GKMatchmakerViewController *mmvc = [[[GKMatchmakerViewController alloc] initWithInvite:acceptedInvite] autorelease];
        mmvc.matchmakerDelegate = self;
        [self presentModalViewController:mmvc animated:YES];
    }
    else if (playersToInvite)
    {
        GKMatchRequest *request = [[[GKMatchRequest alloc] init] autorelease];
        request.minPlayers = 2;
        request.maxPlayers = 2;
        request.playersToInvite = playersToInvite;
        
        GKMatchmakerViewController *mmvc = [[[GKMatchmakerViewController alloc] initWithMatchRequest:request] autorelease];
        mmvc.matchmakerDelegate = self;
        [self presentModallViewController:mmvc animated:YES];
    }
};

    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
   
    //[ViewController=Nil];
    [ViewController dealloc];
    [super dealloc];
    
}


@end
