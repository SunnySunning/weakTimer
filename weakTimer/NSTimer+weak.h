//
//  NSTimer+weak.h
//  NotificationCenterTest
//
//  Created by 孙宁 on 2017/7/26.
//  Copyright © 2017年 孙宁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^weakTimerBlock)(NSTimer *timer);

@interface NSTimer (weak)

+ (NSTimer *)weak_ScheduledTimerWithTimeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo block:(weakTimerBlock)block;

@end
NS_ASSUME_NONNULL_END
