//
//  MyChatModule.m
//  SimpleChat
//
//  Created by asharijuang on 7/13/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "MyChatModule.h"
@import Qiscus;


@implementation MyChatModule

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(startChat:(NSString *)email username:(NSString *)username)
{
  //RCTLogInfo(@"Pretending to create an event %@ at %@", email, username);
  
  
  NSLog(@"import qiscus");
  /*
  // Method 1
  // Get Qiscus chat view
  QiscusChatVC *chatView = [Qiscus chatViewWithUsers:[NSArray arrayWithObject:email] readOnly:false title:@"Sample Chat" subtitle:@"chat with user" distinctId:@"" withMessage:NULL];

  // present chatview from current view(ReactView)
  dispatch_async(dispatch_get_main_queue(), ^{
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    UIViewController *rootViewController = keyWindow.rootViewController;
    
    [rootViewController presentViewController:chatView animated:YES completion: nil];
  });
  */
  
  // Method 2
  // automatic present to chat view
  dispatch_async(dispatch_get_main_queue(), ^{
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    UIViewController *rootViewController = keyWindow.rootViewController;
    [Qiscus chatWithUsers:[NSArray arrayWithObject:email]
                 target:rootViewController
               readOnly:false
                  title:@"Sample Chat"
               subtitle:@"chat with user"
             distinctId:NULL 
            withMessage:NULL 
           optionalData:NULL];
    });
  
}
  
@end
