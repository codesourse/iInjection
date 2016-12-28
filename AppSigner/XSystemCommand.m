//
//  XSystemCommand.m
//  iOS App Signer
//
//  Created by jsb-xiakj on 2016/12/23.
//  Copyright © 2016年 Daniel Radtke. All rights reserved.
//

#import "XSystemCommand.h"

@implementation XSystemCommand
-(void)rystemCommand:(NSString *)cmd
{
    [[NSTask launchedTaskWithLaunchPath:@"/bin/sh"
                              arguments:@[@"-c", cmd]]
     waitUntilExit];
}

-(int )contentDataPath:(NSString *)dataPath
{
    NSData *data = [[NSData alloc]initWithContentsOfFile:dataPath];

    int char1 = 0 ,char2 =0 ; //必须这样初始化
    
    [data getBytes:&char1 range:NSMakeRange(0, 1)];
    
    [data getBytes:&char2 range:NSMakeRange(1, 1)];
    
    NSLog(@"data=======%d%d,%lu",char1,char2,(unsigned long)[data length]);
    
    return  [[NSString stringWithFormat:@"%i%i",char1,char2] intValue];
}

@end
