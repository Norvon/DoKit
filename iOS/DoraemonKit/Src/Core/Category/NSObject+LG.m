//
//  NSObject+LG.m
//  DoraemonKit
//
//  Created by welink on 2023/8/2.
//

#import "NSObject+LG.h"
#import "DoraemonManager.h"
#import "DoraemonCacheManager.h"

@implementation NSObject (LG)
+ (void)load {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(lg_handleDidFinishLaunching)
                                                 name:UIApplicationDidFinishLaunchingNotification
                                               object:nil];
}

+ (void)lg_handleDidFinishLaunching {
    [DoraemonManager shareInstance].supportedInterfaceOrientations = UIInterfaceOrientationMaskAll;
    [[DoraemonManager shareInstance] install];
    [[DoraemonCacheManager sharedInstance] saveNSLogSwitch:YES];
}
@end
