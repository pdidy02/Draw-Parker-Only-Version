//
//  CharacterViewController.m
//  Draw
//
//  Created by Parker Hardy on 7/12/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//

#import "CharacterViewController.h"

@interface CharacterViewController ()

@end

@implementation CharacterViewController
@synthesize beckyCkeck;
@synthesize crazyCkeck;
@synthesize deadCkeck;
@synthesize dirtyCkeck;
@synthesize krazyCkeck;
@synthesize moneyCkeck;
@synthesize sassyCkeck;
@synthesize triggerCkeck;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)choseBraveBecky{
    NSString *becky=[NSString stringWithFormat:@"Brave Becky.png"];
    NSUserDefaults *charecter=[NSUserDefaults standardUserDefaults];
    [charecter setObject:becky forKey:@"choice"];
    [charecter synchronize];
    [self checkChar:@"BraveBecky"];

}
-(IBAction)choseCrazyCody{
    NSString *crazy=[NSString stringWithFormat:@"Crazy Cody.png"];
    NSUserDefaults *charecter=[NSUserDefaults standardUserDefaults];
    [charecter setObject:crazy forKey:@"choice"];
    [charecter synchronize];
    [self checkChar:@"CrazyCody"];
}
-(IBAction)choseDeadEyeDan{
    NSString *dead=[NSString stringWithFormat:@"Dead Eye Dan.png"];
    NSUserDefaults *charecter=[NSUserDefaults standardUserDefaults];
    [charecter setObject:dead forKey:@"choice"];
    [charecter synchronize];
    [self checkChar:@"DeadEyeDan"];
}
-(IBAction)choseDirtyDale{
    NSString *dirty=[NSString stringWithFormat:@"Dirty Dale.png"];
    NSUserDefaults *charecter=[NSUserDefaults standardUserDefaults];
    [charecter setObject:dirty forKey:@"choice"];
    [charecter synchronize];
    [self checkChar:@"DirtyDale"];
}
-(IBAction)choseKrazyKage{
    NSString *krazy=[NSString stringWithFormat:@"Krazy Kage.png"];
    NSUserDefaults *charecter=[NSUserDefaults standardUserDefaults];
    [charecter setObject:krazy forKey:@"choice"];
    [charecter synchronize];
    [self checkChar:@"KrazyKage"];
}
-(IBAction)choseMoneyMatt{
    NSString *money=[NSString stringWithFormat:@"Money Matt.png"];
    NSUserDefaults *charecter=[NSUserDefaults standardUserDefaults];
    [charecter setObject:money forKey:@"choice"];
    [charecter synchronize];
    [self checkChar:@"MoneyMatt"];
}
-(IBAction)choseSassySophie{
    NSString *sassy=[NSString stringWithFormat:@"Sassy Sophie.png"];
    NSUserDefaults *charecter=[NSUserDefaults standardUserDefaults];
    [charecter setObject:sassy forKey:@"choice"];
    [charecter synchronize];
    [self checkChar:@"SassySophie"];
}
-(IBAction)choseTriggerFingerTony{
    NSString *trigger=[NSString stringWithFormat:@"Trigger Finnger Tony.png"];
    NSUserDefaults *charecter=[NSUserDefaults standardUserDefaults];
    [charecter setObject:trigger forKey:@"choice"];
    [charecter synchronize];

    [self checkChar:@"TriggerFinger"];
}


-(void)checkChar:(NSString*)charName{
    UIImage *boxImage=[UIImage imageNamed:@"Box.png"];
    UIImage *checkImage=[UIImage imageNamed:@"Checkbox.png"];
    
    
    if ([charName isEqual:@"BraveBecky"]){
   
        beckyCkeck.image=checkImage;
        crazyCkeck.image=boxImage;
        deadCkeck.image=boxImage;
        dirtyCkeck.image=boxImage;
        krazyCkeck.image=boxImage;
        moneyCkeck.image=boxImage;
        sassyCkeck.image=boxImage;
        triggerCkeck.image=boxImage;
        

    }
    if ([charName isEqual:@"CrazyCody"]){
        crazyCkeck.image=checkImage;
        beckyCkeck.image=boxImage;
       // crazyCkeck.image=boxImage;
        deadCkeck.image=boxImage;
        dirtyCkeck.image=boxImage;
        krazyCkeck.image=boxImage;
        moneyCkeck.image=boxImage;
        sassyCkeck.image=boxImage;
        triggerCkeck.image=boxImage;
    }
    if ([charName isEqual:@"DeadEyeDan"]){
        deadCkeck.image=checkImage;
        beckyCkeck.image=boxImage;
        crazyCkeck.image=boxImage;
       // deadCkeck.image=boxImage;
        dirtyCkeck.image=boxImage;
        krazyCkeck.image=boxImage;
        moneyCkeck.image=boxImage;
        sassyCkeck.image=boxImage;
        triggerCkeck.image=boxImage;
    }
    if ([charName isEqual:@"DirtyDale"]){
        dirtyCkeck.image=checkImage;
        beckyCkeck.image=boxImage;
        crazyCkeck.image=boxImage;
        deadCkeck.image=boxImage;
        //dirtyCkeck.image=boxImage;
        krazyCkeck.image=boxImage;
        moneyCkeck.image=boxImage;
        sassyCkeck.image=boxImage;
        triggerCkeck.image=boxImage;
    }
    if ([charName isEqual:@"KrazyKage"]){
        krazyCkeck.image=checkImage;
        beckyCkeck.image=boxImage;
        crazyCkeck.image=boxImage;
        deadCkeck.image=boxImage;
        dirtyCkeck.image=boxImage;
       // krazyCkeck.image=boxImage;
        moneyCkeck.image=boxImage;
        sassyCkeck.image=boxImage;
        triggerCkeck.image=boxImage;
    
    }
    if ([charName isEqual:@"MoneyMatt"]){
        moneyCkeck.image=checkImage;
        beckyCkeck.image=boxImage;
        crazyCkeck.image=boxImage;
        deadCkeck.image=boxImage;
        dirtyCkeck.image=boxImage;
        krazyCkeck.image=boxImage;
        //moneyCkeck.image=boxImage;
        sassyCkeck.image=boxImage;
        triggerCkeck.image=boxImage;
    }
    if ([charName isEqual:@"SassySophie"]){
        sassyCkeck.image=checkImage;
        beckyCkeck.image=boxImage;
        crazyCkeck.image=boxImage;
        deadCkeck.image=boxImage;
        dirtyCkeck.image=boxImage;
        krazyCkeck.image=boxImage;
        moneyCkeck.image=boxImage;
        //sassyCkeck.image=boxImage;
        triggerCkeck.image=boxImage;
    }
    if ([charName isEqual:@"TriggerFinger"]){
        triggerCkeck.image=checkImage;
    
    beckyCkeck.image=boxImage;
    crazyCkeck.image=boxImage;
    deadCkeck.image=boxImage;
    dirtyCkeck.image=boxImage;
    krazyCkeck.image=boxImage;
    moneyCkeck.image=boxImage;
    sassyCkeck.image=boxImage;
    //triggerCkeck.image=boxImage;
    }
    NSUserDefaults *savedChar=[NSUserDefaults standardUserDefaults];
 [savedChar setObject:charName forKey:@"SavedCharVC"];
    [savedChar synchronize];
    

}
    
    



- (void)viewDidLoad
{
    NSUserDefaults *loadcharfromsave=[NSUserDefaults standardUserDefaults];
    NSString *loadChar=[loadcharfromsave objectForKey:@"SavedCharVC"];
    
    [self checkChar:loadChar];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.





}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
