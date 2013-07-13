//
//  AccelerometerViewController.m
//  Accelerometer
//
//  Created by Alasdair Allan on 29/09/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "AccelerometerViewController.h"
#import <UIKit/UIKit.h>

@implementation AccelerometerViewController
@synthesize ammo;
bool reloadStatus=TRUE;
int a=0;
- (void)viewDidLoad {
	
    accelerometer = [UIAccelerometer sharedAccelerometer];
	accelerometer.updateInterval = 0.1;
	accelerometer.delegate = self;	
//	bangLog = [UIAccelerometer sharedAccelerometer];
//    bangLog.updateInterval=0.1;
//    bangLog.delegate=self;
    [super viewDidLoad];
    val=YES;
    ammo=6;
    outOfAmmo.text=[NSString stringWithFormat:@"%lld",ammo];
    //return val;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
-(IBAction)reload:(id)sender{
    
    ammo=6;
    outOfAmmo.text=[NSString stringWithFormat:@"%lld",ammo];
}


-(BOOL)reload{
    reloadStatus=TRUE;
    return reloadStatus;
}


- (void)dealloc {
	[xLabel release];
	[yLabel release];
	[zLabel release];
	[xBar release];
	[yBar release];
	[zBar release];	

	accelerometer.delegate = nil;
	[accelerometer release];

	[super dealloc];
}


#pragma mark UIAccelerometer Methods

- (void)accelerometer:(UIAccelerometer *)meter didAccelerate:(UIAcceleration *)acceleration 

{
	accelerometer.updateInterval=.23;
    xLabel.text = [NSString stringWithFormat:@"%f", acceleration.x];
	xBar.progress = ABS(acceleration.x);

	yLabel.text = [NSString stringWithFormat:@"%f", acceleration.y];
	yBar.progress = ABS(acceleration.y);
    xint = ABS(acceleration.x)*1;
	yint=acceleration.y;
    zint=acceleration.z;
    zLabel.text = [NSString stringWithFormat:@"%f", acceleration.z];
	zBar.progress = ABS(acceleration.z);
   
if (xint>1.16&&ammo!=0){
    xint=0;
  
NSLog(@"Bang");
    ammo=ammo-1;
outOfAmmo.text=[NSString stringWithFormat:@"%lld",ammo];
}
else if (xint>.4&&ammo==0){
    NSLog(@"Out Of Ammo");
    outOfAmmo.text=@"Out Of Ammo";
}
}
@end

