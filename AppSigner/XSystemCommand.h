//
//  XSystemCommand.h
//  iOS App Signer
//
//  Created by jsb-xiakj on 2016/12/23.
//  Copyright © 2016年 Daniel Radtke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSystemCommand : NSObject
-(void)rystemCommand:(NSString *)cmd;
-(int )contentDataPath:(NSString *)dataPath;
@end
