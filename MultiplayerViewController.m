//
//  MultiplayerViewController.m
//  Draw
//
//  Created by Parker Hardy on 6/13/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//

#import "MultiplayerViewController.h"

@interface MultiplayerViewController ()
@synthesize Match;
@synthesize delegate;
@end

@implementation MultiplayerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)hostMatch{
    GKMatchRequest *request = [[GKMatchRequest alloc] init];
    request.minPlayers = 2;
    request.maxPlayers = 2;
    
    GKMatchmakerViewController *mmvc = [[GKMatchmakerViewController alloc] initWithMatchRequest:request];
    mmvc.matchmakerDelegate = self;
    [self presentViewController:mmvc animated:YES completion:nil];
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];

}
- (void)matchmakerViewControllerWasCancelled:(GKMatchmakerViewController *)viewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
    // Implement any specific code in your game here.
}
- (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFailWithError:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
    // Implement any specific code in your game hetre.
}
- (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFindMatch:(GKMatch *)theMatch {
    [self dismissViewControllerAnimated:YES completion:nil];
    self.Match = theMatch;
    Match.delegate = self;
    if (!matchStarted && Match.expectedPlayerCount == 2) {
        NSLog(@"Ready to start match!");
        
        
        
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
