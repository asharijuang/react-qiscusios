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
    
    UIViewController *target = [Qiscus chatViewWithUsers:[NSArray arrayWithObject:@"juang123"] readOnly:NO title:@"Qiscus" subtitle:@"test" distinctId:NULL withMessage:@""];
    
    UIViewController *controller = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    [controller presentViewController:target animated:YES completion:NULL];
    
//    [Qiscus chatWithUsers:[NSArray arrayWithObject:@"roberto@mail.com"] target:self readOnly:false title:@"Sample Chat" subtitle:@"chat with user" distinctId:NULL withMessage:NULL optionalData:NULL];
////    
//    [Qiscus chatWithUsers:[NSArray arrayWithObject:@"roberto@mail.com"]
//                 target:rootViewController
//               readOnly:false
//                  title:@"Sample Chat"
//               subtitle:@"chat with user"
//             distinctId:NULL 
//            withMessage:NULL 
//           optionalData:NULL];
    });
  
}


RCT_EXPORT_METHOD(login:(NSString *)username email:(NSString *)email avatar:(NSString *)avatar) {
  [Qiscus setupWithAppId:@"dragongo" userEmail:@"juang99" userKey:@"juang99" username:@"juang" avatarURL:@"http://" delegate:self secureURl:YES];

}

- (void)qiscusConnected {
  
}

- (void)qiscusFailToConnect:(NSString *)withMessage {
  NSLog(withMessage);
}
@end
