//
//  MyChatModule.h
//  SimpleChat
//
//  Created by asharijuang on 7/13/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface MyChatModule : NSObject <RCTBridgeModule>

- (void)startChat:(NSString *)email username:(NSString *)username;
//- (void)login:(NSString *)username email:(NSString *)email;
//- (void)login:(NSString *)username email:(NSString *)email avatar:(NSString *)avatar callback:(void(^)(NSString *))callback;

@end
