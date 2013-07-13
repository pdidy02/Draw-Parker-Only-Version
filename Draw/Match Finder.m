//
//  Match Finder.m
//  Draw
//
//  Created by Parker Hardy on 4/1/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//

#import "Match Finder.h"

@implementation Match_Finder
@synthesize Match;
@synthesize delegate;
@synthesize background;
@synthesize playersDict;
@synthesize matchedPlayer;
@synthesize localAvatar;
- (void)viewDidLoad{
    
  
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //[playSoundtrack play];

    NSUserDefaults *localChar=[NSUserDefaults standardUserDefaults];
    NSString *localCharID=[localChar objectForKey:@"choice"];
    UIImage *localCharIMG=[UIImage imageNamed:localCharID];
localAvatar.image=localCharIMG;

    NSLog([NSString stringWithFormat:@"%f",self.view.frame.size.height]);
        UIImage *sunset=[UIImage imageWithContentsOfFile:@"Background.jpg"];
        background.image=sunset;


}
- (void)lookupPlayers {
    
    NSLog(@"Looking up %d players...", Match.playerIDs.count);
    [GKPlayer loadPlayersForIdentifiers:Match.playerIDs withCompletionHandler:^(NSArray *players, NSError *error) {
        
        if (error != nil) {
            NSLog(@"Error retrieving player info: %@", error.localizedDescription);
            matchStarted = NO;
            [delegate matchEnded];
        } else {
            
            // Populate players dict
            self.playersDict = [NSMutableDictionary dictionaryWithCapacity:players.count];
            for (GKPlayer *player in players) {
                NSLog(@"Found player: %@", player.alias);
                [playersDict setObject:player forKey:player.playerID];
            }
                  }
    }];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
    
    //[drawAction = nil];
    
    
    
    [super dealloc];
    
}


- (IBAction)hostMatch: (NSArray*) friends
{
    GKMatchRequest *request = [[GKMatchRequest alloc] init];
    request.minPlayers = 2;
    request.maxPlayers = 2;
    
    GKMatchmakerViewController *mmvc = [[GKMatchmakerViewController alloc] initWithMatchRequest:request];
    mmvc.matchmakerDelegate = self;
       [self presentViewController:mmvc animated:YES completion:nil];


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
    if (!matchStarted && Match.expectedPlayerCount == 1) {
        NSLog(@"Ready to start match!");
        [self lookupPlayers];
        matchedPlayer.text=[NSString stringWithFormat:@"%@", playersDict];
        UIAccelerometer *accelerometer=[gameController sharedAccelerometer];
       
        
    }

   
}
-(void)gameStart{
    
    
}


@end
