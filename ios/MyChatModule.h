//
//  MyChatModule.h
//  SimpleChat
//
//  Created by asharijuang on 7/13/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
@import Qiscus;

@interface MyChatModule : NSObject <RCTBridgeModule, QiscusConfigDelegate>

- (void)startChat:(NSString *)email username:(NSString *)username;
//- (void)login:(NSString *)username email:(NSString *)email;
- (void)login:(NSString *)username email:(NSString *)email avatar:(NSString *)avatar;

@end
