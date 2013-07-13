//
//  AccelerometerViewController.h
//  Accelerometer
//
//  Created by Alasdair Allan on 29/09/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>


BOOL val=YES;


@interface AccelerometerViewController : UIViewController <UIAccelerometerDelegate> {
	
 
    IBOutlet UILabel *bamLabel;
	IBOutlet UILabel *xLabel;
	IBOutlet UILabel *yLabel;
	IBOutlet UILabel *zLabel;
	IBOutlet UILabel *outOfAmmo;
    IBOutlet UILabel *shots;
    IBOutlet UIProgressView *xBar;
	IBOutlet UIProgressView *yBar;
	IBOutlet UIProgressView *zBar;
    AVAudioPlayer *shootSound;
	UIAccelerometer *accelerometer;
	int xint;
    int yint;
    int zint;
    UIAccelerometer *bangLog;
    //val=YES;
    int shoot;
    
    

}
@property(nonatomic,assign)int64_t ammo;
@end

