//
//  NSTimer+weak.m
//  NotificationCenterTest
//
//  Created by 孙宁 on 2017/7/26.
//  Copyright © 2017年 孙宁. All rights reserved.
//

#import "NSTimer+weak.h"

@implementation NSTimer (weak)

+ (NSTimer *)weak_ScheduledTimerWithTimeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo block:(weakTimerBlock)block
{
    return [NSTimer scheduledTimerWithTimeInterval:ti target:self selector:@selector(timerFire:) userInfo:[block copy] repeats:yesOrNo];
}

+ (void)timerFire:(NSTimer *)timer
{
    weakTimerBlock block = timer.userInfo;
    if (block)
    {
        block(timer);
    }
}

@end
