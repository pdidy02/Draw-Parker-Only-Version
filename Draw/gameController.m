//
//  gameController.m
//  Draw
//
//  Created by Parker Hardy on 7/12/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//

#import "gameController.h"

@implementation gameController


+(void)accelerometerSetup{
    UIAccelerometer *acceleometer=[UIAccelerometer sharedAccelerometer];
    acceleometer.updateInterval=0.01;
    acceleometer.delegate=self;
    
}


@end


